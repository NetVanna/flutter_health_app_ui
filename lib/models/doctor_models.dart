class DoctorModels {
  final String name;
  final String position;
  final double averageReview;
  final int totalReview;
  final String profile;

  DoctorModels({
    required this.name,
    required this.position,
    required this.averageReview,
    required this.totalReview,
    required this.profile,
  });
}

List<DoctorModels> nearbyDoctor = [
  DoctorModels(
    name: "Luke Holland",
    position: "General Practitioner",
    averageReview: 2.0,
    totalReview: 190,
    profile: "assets/doctor_1.jpg",
  ),
  DoctorModels(
    name: "Sophie Harmony",
    position: "General Practitioner",
    averageReview: 3.0,
    totalReview: 290,
    profile: "assets/doctor_2.jpg",
  ),
  DoctorModels(
    name: "Raise Rebuild",
    position: "General Practitioner",
    averageReview: 4.0,
    totalReview: 390,
    profile: "assets/doctor_3.jpg",
  ),
  DoctorModels(
    name: "Luke Holland",
    position: "General Practitioner",
    averageReview: 2.0,
    totalReview: 190,
    profile: "assets/people-headshot-lindsay-kimble-9855440283c440159d1684a4befaa97d.jpg",
  ),
  DoctorModels(
    name: "Sophie Harmony",
    position: "General Practitioner",
    averageReview: 3.0,
    totalReview: 290,
    profile: "assets/people-headshot-lauren-lieberman-830b33fdd4cc4c4bbc6e71ebd84dd633.jpg",
  ),
  DoctorModels(
    name: "Chain Ramsey",
    position: "General Practitioner",
    averageReview: 3.0,
    totalReview: 90,
    profile: "assets/p-5.jpeg",
  ),

];
