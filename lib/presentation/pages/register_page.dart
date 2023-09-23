import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getlinked_landing_page/core/core.dart';
import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/domain/models/category.dart';
import 'package:getlinked_landing_page/presentation/view_models/register_page_vm.dart';
import 'package:getlinked_landing_page/presentation/widgets/alert_dialogs.dart';
import 'package:getlinked_landing_page/presentation/widgets/register_page.dart/register_large.dart';
import 'package:getlinked_landing_page/presentation/widgets/register_page.dart/register_mobile.dart';

class RegisterPage extends ConsumerStatefulWidget {
  const RegisterPage({super.key});

  @override
  ConsumerState<ConsumerStatefulWidget> createState() => _RegisterPageState();
}

class _RegisterPageState extends ConsumerState<RegisterPage> {
  final teamsNameCtrl = TextEditingController();
  final emailCtrl = TextEditingController();
  final phoneCtrl = TextEditingController();
  final projectCtrl = TextEditingController();

  final formKey = GlobalKey<FormState>();

  List<Category>? categories;
  Category? category;
  int? groupSize;

  bool isTermsAgreed = false;

  List<int> groupSizes = List.generate(10, (index) => index + 1);

  @override
  void initState() {
    super.initState();
    getCategories();
  }

  @override
  Widget build(BuildContext context) {
    ref.listen(registerPageVmProvider, (previous, next) {
      if (next.status == Status.completed) {
        Navigator.pop(context);
        if (screenWidth(context) >= Breakpoint.tablet) {
          showSuccessDialog(context);
        } else {
          showMobileSuccessDialog(context);
        }
        clearDetails();
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
        body: RegisterPageLarge(
          teamsNameCtrl: teamsNameCtrl,
          emailCtrl: emailCtrl,
          isTermsAgreed: isTermsAgreed,
          phoneCtrl: phoneCtrl,
          projectCtrl: projectCtrl,
          formKey: formKey,
          onPresseed: submitForm,
          category: category,
          groupSize: groupSize,
          groupSizes: groupSizes,
          onCategorySelect: onCategorySelect,
          onGroupSizeSelect: onGroupSizeSelect,
          onIsTermsChanged: onIsTermsAgreed,
          categories: categories ??
              [
                Category(id: 1, name: "MOBILE"),
                Category(id: 2, name: "UI/UX"),
                Category(id: 3, name: "BACKEND"),
              ],
        ),
      );
    }
    return Scaffold(
      body: RegisterMobile(
          teamsNameCtrl: teamsNameCtrl,
          emailCtrl: emailCtrl,
          phoneCtrl: phoneCtrl,
          projectCtrl: projectCtrl,
          category: category,
          groupSize: groupSize,
          categories: categories ?? [],
          groupSizes: groupSizes,
          onCategorySelect: onCategorySelect,
          onGroupSizeSelect: onGroupSizeSelect,
          formKey: formKey,
          onPresseed: submitForm,
          isTermsAgreed: isTermsAgreed,
          onIsTermsChanged: onIsTermsAgreed),
    );
  }

  void getCategories() async {
    categories =
        await ref.read(registerPageVmProvider.notifier).getCategories();
    setState(() {});
  }

  void clearDetails() {
    teamsNameCtrl.clear();
    phoneCtrl.clear();
    emailCtrl.clear();
    projectCtrl.clear();
    category = null;
    groupSize = null;
    isTermsAgreed = false;
    setState(() {});
  }

  void submitForm() async {
    if (formKey.currentState!.validate()) {
      if (!isTermsAgreed) {
        showMessage(context, "Please accept terms and conditions");
        return;
      }
      await ref.read(registerPageVmProvider.notifier).register(
          email: emailCtrl.text,
          teamsName: teamsNameCtrl.text,
          projectTopic: projectCtrl.text,
          category: category?.id ?? 1,
          phoneNumber: int.parse(phoneCtrl.text),
          groupSize: groupSize ?? 1,
          privacyPolicyAccepted: isTermsAgreed);
    }
  }

  void onCategorySelect(Category? selectedCategory) {
    category = selectedCategory;
    setState(() {});
  }

  void onGroupSizeSelect(int? selectedGroupSize) {
    groupSize = selectedGroupSize;
    setState(() {});
  }

  void onIsTermsAgreed(bool? selectedIsTermsAgreed) {
    isTermsAgreed = selectedIsTermsAgreed ?? false;
    setState(() {});
  }
}
