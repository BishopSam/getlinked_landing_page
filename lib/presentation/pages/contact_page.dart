import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/presentation/view_models/contact_page_vm.dart';
import 'package:getlinked_landing_page/presentation/widgets/alert_dialogs.dart';
import 'package:getlinked_landing_page/presentation/widgets/contact_page/contact_page_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/contact_page/contact_page_mobile.dart';

class ContactPage extends ConsumerStatefulWidget {
  const ContactPage({super.key});

  @override
  ConsumerState<ContactPage> createState() => _ContactPageState();
}

class _ContactPageState extends ConsumerState<ContactPage> {
  final firstNameController = TextEditingController();
  final emailCtrl = TextEditingController();
  final messageCtrl = TextEditingController();
  final formKey = GlobalKey<FormState>();

  void submitForm() async {
    if (formKey.currentState!.validate()) {
      await ref.read(contactPageVmProvider.notifier).submitContactInfo(
          emailCtrl.text, firstNameController.text, messageCtrl.text);
    }
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(contactPageVmProvider, (previous, next) {
      if (next.status == Status.completed) {
        Navigator.pop(context);
        showInfoMessage(context, "Message Sent!");
      }
      if (next.status == Status.loading) {
        showLoadingDialog(context);
      }
      if (next.status == Status.error) {
        Navigator.pop(context);
        showMessage(context, next.message, isError: true);
      }
    });

    if (screenWidth(context) >= Breakpoint.tablet) {
      return Scaffold(
        body: ContactPageLarge(
            firstNameController: firstNameController,
            emailCtrl: emailCtrl,
            messageCtrl: messageCtrl,
            formKey: formKey,
            onPresseed: submitForm),
      );
    }
    return Scaffold(
      body: ContactPageMobile(
          firstNameController: firstNameController,
          emailCtrl: emailCtrl,
          messageCtrl: messageCtrl,
          formKey: formKey,
          onPresseed: submitForm),
    );
  }
}
