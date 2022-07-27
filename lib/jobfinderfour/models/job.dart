class Job {
  String company;
  String logoUrl;
  bool isMark;
  String title;
  String location;
  String time;
  List<String> req;
  Job(this.company, this.logoUrl, this.isMark, this.title, this.location,
      this.time, this.req);
  static List<Job> generateJobs() {
    return [
      Job(
        'Airbnb Inc.',
        'assets/images/airbnb.png',
        false,
        'VP Bussiness Intelegence',
        '50 Herminia Stravenia, Canada',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge and ability',
          'Interested in the way people choose and use products.',
        ],
      ),
      Job(
        'Linkedin corp.',
        'assets/images/linkedin.png',
        false,
        'Talent Acqusition Lead',
        '566 Eleanore Square,\nFrance',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge and ability',
          'Interested in the way people choose and use products.',
        ],
      ),
      Job(
        'Google LLC.',
        'assets/images/google.png',
        false,
        'Principle Product Design',
        '417 Marion, New York\nUnited States',
        'Full Time',
        [
          'Creative with an eye for shape and colour',
          'Understand different materials and production methods',
          'How technical, practical and scientific knowledge and ability',
          'Interested in the way people choose and use products.',
        ],
      ),
    ];
  }
}
