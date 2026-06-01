// ignore_for_file: constant_identifier_names
// const String url = 'https://rawado.reigeeky.com';

String? url = 'https://phainistonny-backend.thesyndicates.team/api/v1/';

final class NetworkConstants {
  NetworkConstants._();
  static const ACCEPT = "Accept";
  static const APP_KEY = "App-Key";
  static const ACCEPT_LANGUAGE = "Accept-Language";
  static const ACCEPT_LANGUAGE_VALUE = "pt";
  static const APP_KEY_VALUE = String.fromEnvironment("APP_KEY_VALUE");
  static const ACCEPT_TYPE = "application/json";
  static const AUTHORIZATION = "Authorization";
  static const CONTENT_TYPE = "content-Type";
}

final class Endpoints {
  Endpoints._();
  //backend_url
  // App Url

  static String logIn() => "login";
  static String signUp() => "sign-up";
  static String verifyOtp() => "verify/otp";
  static String forgetPassword() => "forget-password";
  static String verifyOtpPassword() => "verify-otp/password";
  static String listComments({required int id}) => "feed/$id/comments/";
  static String resetPassword() => "reset-password";
  static String logout() => "logout";
  static String tools() => "tools";
  static String authOnBoarding() => "auth/onboarding/options";
  static String authOnBoardingSave() => "auth/onboarding/save";
  static String authProfile() => "auth/profile";
  static String authProfileUpdate() => "auth/profile";
  static String drugLookUp() => "drugs/lookup";
  static String drugInteractions() => "drugs/interactions";
  static String labsCategories() => "labs/categories";
  static String getLab() => "labs";
  static String postLapInterpreter() => "labs/analyze-case";
  static String incidentReportTypes() => "incident-report/types";
  static String incidentReport() => "incident-report";
  static String unitRoles() => "charting-coach/unit-roles";
  static String noteTypes() => "charting-coach/note-types";
  static String chartingCoach() => "charting-coach";
  static String assignmentPlanner() => "assignment-planner";
  static String assignmentType() => "assessment-types";
  static String assesmentGuide() => "assessment-guide";
  static String diseaseSuggestions() => "disease-suggestions";
  static String diseaseLookup() => "disease-lookup";
  static String procedureSuggestions() => "procedure-suggestions";
  static String procedureGuide() => "procedure-guide";
  static String carePlan() => "care-plan";
  static String labsHistory() => "labs/history";
}
