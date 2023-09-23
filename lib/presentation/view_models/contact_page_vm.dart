import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:getlinked_landing_page/core/utils/data_state.dart';
import 'package:getlinked_landing_page/dependeincy_container.dart';
import 'package:getlinked_landing_page/domain/models/contact_model.dart';
import 'package:getlinked_landing_page/domain/usecases/post_contact_info.dart';

final contactPageVmProvider =
    StateNotifierProvider<ContactPageNotifier, DataState>(
        (ref) => ContactPageNotifier(di()));

class ContactPageNotifier extends StateNotifier<DataState> {
  ContactPageNotifier(this._postContactInfo) : super(DataState.completed(null));
  final PostContactInfo _postContactInfo;

  Future<void> submitContactInfo(
      String email, String firstName, String message) async {
    state = DataState.loading("Submitting your message..");
    final params =
        Contact(email: email, firstName: firstName, message: message);
    state = await _postContactInfo.call(params);
  }
}
