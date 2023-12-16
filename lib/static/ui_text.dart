import 'package:sber_screen/model/card_content.dart';
import 'package:sber_screen/model/tariff_content.dart';
import 'package:sber_screen/static/custom_icons.dart';

sealed class UIText {
  static const String profile = "Профиль";
  static const String settings = "Настройки";
  static const String connectedTitle = "У вас подключено";
  static const String connectedSubtitle = "Подписки, автоплатежи и сервисы на которые вы подписались";
  static List<CardContent> connectionsList = [
    CardContent(
      image: CustomIcons.sberFlag,
      name: "СберПрайм",
      title: "Платёж 9 июля",
      subtitle: "199 ₽ в месяц",
    ),
    CardContent(
      image: CustomIcons.percentFilled,
      name: "Переводы",
      title: "Автопродление 21 августа",
      subtitle: "199 ₽ в месяц",
    ),
  ];
  static const String tariffTitle = "Тарифы и лимиты";
  static const String tariffSubtitle = "Для операций в Сбербанк Онлайн";
  static List<TariffContent> tariffList = [
    TariffContent(
      image: CustomIcons.limit,
      title: "Изменить суточный лимит",
      subtitle: "На платежи и переводы",
    ),
    TariffContent(
      image: CustomIcons.percent,
      title: "Переводы без комиссии",
      subtitle: "Показать остаток в этом месяце",
    ),
    TariffContent(
      image: CustomIcons.arrows,
      title: "Информация о тарифах \nи лимитах",
      subtitle: null,
    ),
  ];
  static const String interestsTitle = "Интересы";
  static const String interestsSubtitle = "Мы подбираем истории и предложения по темам, которые вам нравятся";
  static const List<String> interestsList = [
    "Еда",
    "Саморазвитие",
    "Технологии",
    "Дом",
    "Досуг",
    "Забота о себе",
    "Наука",
  ];
}
