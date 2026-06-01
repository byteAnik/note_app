// import 'dart:developer';
// import 'package:dio/dio.dart';
// import 'package:phainistonny_app/common_wigdets/custom_toast_message.dart';
// import 'package:phainistonny_app/navigation_rx/data/get_tools_list_api.dart';
// import 'package:phainistonny_app/navigation_rx/model/get_tools_model.dart';
// import 'package:phainistonny_app/networks/rx_base.dart';

// final class GetToolsListRx extends RxResponseInt<GetToolslistModel> {
//   final api = GetToolsListApi.instance;

//   GetToolsListRx({required super.empty, required super.dataFetcher});

//   Stream<GetToolslistModel> get streamData => dataFetcher.stream;

//   Future<bool> fetch() async {
//     log("Fetching tools list...");
//     try {
//       final pack = await api.getToolsList();
//       return handleSuccessWithReturn(pack);
//     } catch (error) {
//       return handleErrorWithReturn(error);
//     }
//   }

//   @override
//   bool handleSuccessWithReturn(GetToolslistModel data) {
//     dataFetcher.sink.add(data);
//     return true;
//   }

//   @override
//   bool handleErrorWithReturn(dynamic error) {
//     String message = 'Something went wrong';
//     log(error.toString());

//     if (error is DioException) {
//       if (error.type == DioExceptionType.connectionError) {
//         message = "Check Your Network Connection";
//       } else if (error.response?.data != null) {
//         final responseData = error.response!.data;
//         if (responseData is Map && responseData["message"] != null) {
//           message = responseData["message"];
//         } else if (responseData is String) {
//           message = responseData;
//         }
//       }
//     }

//     customToastMessage('Error', message);
//     return false;
//   }
// }
