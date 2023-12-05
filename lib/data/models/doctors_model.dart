class DoctorsModel {
  final String name;
  final String specialty;
  double raitng;
  final String image;
  final String infol;
  final String email;
  final String phoneNumber;
  final String adress;
  final List<dynamic> feedback;

  DoctorsModel(
      {required this.name,
      required this.specialty,
      required this.raitng,
      required this.image,
      required this.infol,
      required this.email,
      required this.adress,
      required this.feedback,
      required this.phoneNumber});
}

class FeedBackModel {
  final String image;
  final String name;
  final String text;
  final String date;

  FeedBackModel(
      {required this.image,
      required this.name,
      required this.text,
      required this.date});
}

// abstract не можем создать экземпляр

abstract class DoctorsData {
  static List<DoctorsModel> doctors = [
    DoctorsModel(
      phoneNumber: '+996 555 89 39 54',
      email: 'akylbekov.ch@example.com',
      name: 'Айбек Сатыбалдиев',
      specialty: 'Кардиолог',
      raitng: 5.5,
      image:
          'https://static.vecteezy.com/system/resources/previews/004/831/677/non_2x/doctor-male-avatar-character-icon-free-vector.jpg',
      infol:
          'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. ',
      adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
      feedback: [
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Вася',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Паша',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Витя',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Саша',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Рома',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
      ],
    ),
    DoctorsModel(
      phoneNumber: '+996 555 89 39 54',
      email: 'akylbekov.ch@example.com',
      name: 'Чынгыз Акылбеков',
      specialty: 'Кардиолог',
      raitng: 4.5,
      image:
          'https://static.vecteezy.com/system/resources/previews/004/831/677/non_2x/doctor-male-avatar-character-icon-free-vector.jpg',
      infol:
          'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. ',
      adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
      feedback: [
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
      ],
    ),
    DoctorsModel(
      phoneNumber: '+996 555 89 39 54',
      email: 'akylbekov.ch@example.com',
      name: 'Рафаэль Шабутдинов',
      specialty: 'Кардиолог',
      raitng: 3.5,
      image:
          'https://static.vecteezy.com/system/resources/previews/004/831/677/non_2x/doctor-male-avatar-character-icon-free-vector.jpg',
      infol:
          'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. ',
      adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
      feedback: [
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
      ],
    ),
    DoctorsModel(
      phoneNumber: '+996 555 89 39 54',
      email: 'akylbekov.ch@example.com',
      name: 'Рината Сафиуллина',
      specialty: 'Кардиолог',
      raitng: 2.3,
      image:
          'https://static.vecteezy.com/system/resources/previews/004/831/677/non_2x/doctor-male-avatar-character-icon-free-vector.jpg',
      infol:
          'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. ',
      adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
      feedback: [
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
      ],
    ),
    DoctorsModel(
      phoneNumber: '+996 555 89 39 54',
      email: 'akylbekov.ch@example.com',
      name: 'Алексей Захаренко',
      specialty: 'Кардиолог',
      raitng: 5.4,
      image:
          'https://static.vecteezy.com/system/resources/previews/004/831/677/non_2x/doctor-male-avatar-character-icon-free-vector.jpg',
      infol:
          'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. ',
      adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
      feedback: [
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
      ],
    ),
    DoctorsModel(
      phoneNumber: '+996 555 89 39 54',
      email: 'akylbekov.ch@example.com',
      name: 'Миша',
      specialty: 'Кардиолог',
      raitng: 3.5,
      image:
          'https://static.vecteezy.com/system/resources/previews/004/831/677/non_2x/doctor-male-avatar-character-icon-free-vector.jpg',
      infol:
          'Максимально внимательно относится к каждому своему пациенту, старается найти индивидуальный подход, успешно диагностирует и получает хорошие результаты в лечении острых и хронических болезней. ',
      adress: 'г. Бишкек, ул. Московская, 224, клиника “Медикал Нео”',
      feedback: [
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
        FeedBackModel(
          image:
              'https://pm1.aminoapps.com/6889/74979d4d2744ec6e27995b6e866f091d04c0b40cr1-515-414v2_uhq.jpg',
          name: 'Айзан Алишерова',
          text:
              'Лечил у Чынгыза головные боли. Удалось все поправить без таблеток - массажем и иглотерапией.           В дальнейшем - спортом и ортопед подушкой. Спасибо за такой подход и доброжелательность!',
          date: '15 июня 2020',
        ),
      ],
    ),
  ];
}
