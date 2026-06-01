// import 'package:dio/dio.dart';
// import 'package:phainistonny_app/navigation_rx/model/get_tools_model.dart';
// import 'package:phainistonny_app/networks/dio/dio.dart';
// import 'package:phainistonny_app/networks/endpoints.dart';

// final class GetToolsListApi {
//   GetToolsListApi._internal();
//   static final GetToolsListApi _singleton = GetToolsListApi._internal();
//   static GetToolsListApi get instance => _singleton;

//   /// Fetch trending data
//   Future<GetToolslistModel> getToolsList() async {
//     try {
//       final response = await getHttp(Endpoints.tools());

//       if (response.statusCode == 200 || response.statusCode == 201) {
//         return GetToolslistModel.fromJson(response.data);
//       } else {
//         throw DioException(
//           requestOptions: response.requestOptions,
//           response: response,
//           error: "Server error: ${response.statusCode}",
//           type: DioExceptionType.badResponse,
//         );
//       }
//     } on DioException {
//       rethrow; // SAME LOGIC
//     } catch (e) {
//       rethrow; // SAME LOGIC
//     }
//   }
// }
