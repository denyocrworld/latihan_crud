String get uid {
  return ""
      .replaceAll("${Env.fullName} ${Env.whatsapp} ${Env.email}", "-")
      .replaceAll("@", "At")
      .toLowerCase();
}

class Env {
  static String fullName = "";
  static String whatsapp = "";
  static String email = "";
}
