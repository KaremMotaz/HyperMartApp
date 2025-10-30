class OnboardingModel {
  final String title;
  final String description;
  final int currentPageIndex;

  OnboardingModel({
    required this.title,
    required this.description,
    required this.currentPageIndex,
  });

  static List<OnboardingModel> pages = [
    OnboardingModel(
      title: "Control\nYour Devices",
      description:
          "Take charge of your devices\nwith ease. Simplify your\ncontrol experience.",
      currentPageIndex: 0,
    ),
    OnboardingModel(
      title: "Add Smart Service\nto Your Home",
      description:
          "Elevate your home with new services.\nEnhance convenience and comfort\neffortlessly.",
      currentPageIndex: 1,
    ),
    OnboardingModel(
      title: "Experience the\nultimate in home\ncontrol",
      description:
          "Simplify your life and transform your\nhome into a smart sanctuary today.",
      currentPageIndex: 2,
    ),
  ];
}
