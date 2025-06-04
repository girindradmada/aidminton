class ContactsModel {
  String contactName;
  String contactNumber;
  String contactPhoto;

  ContactsModel ({
    required this.contactName,
    required this.contactNumber,
    required this.contactPhoto,
  });

  static List<ContactsModel> getContacts() {
    List<ContactsModel> contacts = [];

    contacts.add(
      ContactsModel(
        contactName: 'Dad', 
        contactNumber: '0817701369',
        contactPhoto: 'assets/icons/dad.png'
      )
    );

    contacts.add(
      ContactsModel(
        contactName: 'Mom', 
        contactNumber: '08420198729',
        contactPhoto: 'assets/icons/mom.png'
      )
    );

    contacts.add(
      ContactsModel(
        contactName: 'Faiz', 
        contactNumber: '081289554773',
        contactPhoto: 'assets/icons/faiz.png'
      )
    );

    contacts.add(
      ContactsModel(
        contactName: 'Ivan', 
        contactNumber: '081351400537',
        contactPhoto: 'assets/icons/ivan.png'
      )
    );

    contacts.add(
      ContactsModel(
        contactName: 'Nasye', 
        contactNumber: '085939639044',
        contactPhoto: 'assets/icons/nasye.png'
      )
    );

    return contacts;
  }
}