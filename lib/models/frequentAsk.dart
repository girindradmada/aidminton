class FrequentModel {
  String question;
  String answer;

  FrequentModel({
    required this.question,
    required this.answer
  });

  static List<FrequentModel> getFaq() {
    List<FrequentModel> faqs = [];

    faqs.add(
      FrequentModel(
        question: 'Are Aidminton sources trusted?', 
        answer: "No"
      )
    );

    faqs.add(
      FrequentModel(
        question: 'Is there a free plan for Aidminton?', 
        answer: "We need money"
      )
    );

    faqs.add(
      FrequentModel(
        question: 'Aidminton provide local courts?', 
        answer: "Yes, namely Jambon, Funminton, and GOR Area"
      )
    );

    faqs.add(
      FrequentModel(
        question: 'Contact customer service', 
        answer: "You can call or redirect to our Whatsapp"
      )
    );

    faqs.add(
      FrequentModel(
        question: 'Forgot password?', 
        // answer: "We have a designated page that will send an email to your account and you may change your password from there."
        answer: "boo hoo cry about it nigga"
      )
    );

    return faqs;
  }
}