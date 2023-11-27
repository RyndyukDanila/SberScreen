import 'package:sber_screen/model/card_text.dart';
import 'package:sber_screen/model/operation.dart';

sealed class UIText {
  static const String profile = "Профиль";
  static const String settings = "Настройки";
  static const String connected = "У вас подключено";
  static const String connectedDesc = "Подписки, автоплатежи и сервисы на которые вы подписались";
  static List<CardText> connections = [
    CardText(name: "СберПрайм", title: "Платёж 9 июля", subtitle: "199 ₽ в месяц"),
    CardText(name: "Переводы", title: "Автопродление 21 августа", subtitle: "199 ₽ в месяц"),
  ];
  static const String tarif = "Тарифы и лимиты";
  static const String tarifDesc = "Для операций в Сбербанк Онлайн";
  static List<Operation> operationsList = [
    Operation(title: "Изменить суточный лимит", subtitle: "На платежи и переводы"),
    Operation(title: "Переводы без комиссии", subtitle: "Показать остаток в этом месяце"),
    Operation(title: "Информация о тарифахи лимитах", subtitle: null),
  ];
  static const String interests = "Интересы";
  static const String interestsDesc = "Мы подбираем истории и предложения по темам, которые вам нравятся";
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
