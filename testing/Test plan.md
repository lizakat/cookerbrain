# План тестирования
---

# Содержание
1. [Введение](#intro)  
2. [Объект тестирования](#object)  
3. [Атрибуты качества](#attributes)  
4. [Риски](#risks)  
5. [Аспекты тестирования](#aspects)  
6. [Подходы к тестированию](#approaches)  
7. [Представление результатов](#results)  
8. [Выводы](#conclusion)  

<a name="intro"/>

## 1 Введение
Данный документ описывает план тестирования приложения ["CookerBrain"](https://github.com/lizakat/cookerbrain). Документ предназначен для людей, выполняющих тестирование данного проекта. Цель тестирования - проверка соответствия реального поведения программы проекта и ее ожидаемого поведения, которое описано в [требованиях](https://github.com/lizakat/cookerbrain/blob/main/documentation/SRS.md).

<a name="object"/>

## 2 Объект тестирования
В качестве объектов тестирования можно выделить следующие функциональные требования:

* просмотр рецептов;
* просмотр информации о рецептах;
* аутентификация;
* добавление и удаление товаров в список покупок;
* просмотр списка покупок.

<a name="attributes"/>

## 3 Атрибуты качества
1. Функциональность:
    * функциональная полнота: приложение должно выполнять все заявленные функции;
    * функциональная корректность: приложение должно выполнять все заявленные функции корректно.
2. Удобство использования:
    * понятность: приложение должно иметь интерфейс, который с ясностью и легкостью воспринимается пользователем;
    * эргономичность: приложение должно удовлетворять физиологическим и психологическим потребностям пользователя;
    * все функциональные элементы пользовательского интерфейса имеют описания в виде названий или поясняющих строк, определяющие действие, которое произойдет при взаимодействии с данным элементом.
3. Производительность:
    * эффективность: приложение должно оптимально использовать ресурсы системы;
    * плавность анимации: в приложение  должны отсутствовать рывки и лаги в анимационных переходах.

<a name="risks"/>

## 4 Риски
К рискам можно отнести:
* нехватка ресурсов системы;
* отсутствие Интернет-соединения у пользователя;
* ошибки серверов, обрабатывающих запросы пользователя;
* сбои  в работе баз данных.

<a name="aspects"/>

## 5 Аспекты тестирования
В ходе тестирования планируется проверить реализацию основных функций приложения. В соотвествии с которыми можно определить следующие аспекты тестирования:
* запуск WEB-приложения;
* переход между разделами приложения;
* просмотр рецептов;
* просмотр информации рецепте (ингредиенты и способ приготовления);
* авторизация пользователя;
* изменение списка покупок (добавление и удаление товаров);
* просмотр списка покупок.

**Запуск WEB-приложения:**

Этот вариант использования небходимо протестировать на:

* запуск приложения без подключения к интернету;
* запуск приложения с подключением к интернету. 

**Переход между разделами приложения**

Этот вариант использования небходимо протестировать на:

* переход на подраздел главной страницы;
* переход на подраздел категории рецептов;
* переход на подраздел информации о рецепте;
* переход на подраздел информации об ингредиентах рецепта;
* переход на подраздел информации о способе приготовления рецепте;
* переход на подраздел списка покупок;
* переход на подраздел избранных рецептов;
* переход на подраздел добавления рецепта;
* переход на подраздел добавления товара в список покупок;
* переход на подраздел авторизации/регистрации.

**Просмотр рецепта**

Этот вариант использования небходимо протестировать на:

* корректное отображение актуальной информации о рецепте;
* возможность перехода к подразделу дополнительной информации о рецепте;
* соответствие данного
  раздела [мокапу](https://github.com/lizakat/cookerbrain/blob/main/mockups/%D0%9F%D1%80%D0%B8%D0%BC%D0%B5%D1%80%20%D1%80%D0%B5%D1%86%D0%B5%D0%BF%D1%82%D0%B0.jpg).

**Просмотр информации о рецепте**

Этот вариант использования небходимо протестировать на:

* корректное отображение актуальной информации об ингредиентах и способе приготовлаения рецепта;
* соответствие данного
  раздела [мокапу](https://github.com/lizakat/cookerbrain/blob/main/mockups/%D0%9F%D1%80%D0%B8%D0%BC%D0%B5%D1%80%20%D1%80%D0%B5%D1%86%D0%B5%D0%BF%D1%82%D0%B0%20(%D0%B8%D0%BD%D0%B3%D1%80%D0%B5%D0%B4%D0%B8%D0%B5%D0%BD%D1%82%D1%8B%20).jpg)

**Авторизация пользователя**

Этот вариант использования небходимо протестировать на:

* отсутствие вводимой учётной записи пользователя;
* корректное создание новой учётной записи пользователя;
* соответствие данного
  раздела [мокапу](https://github.com/lizakat/cookerbrain/blob/main/mockups/%D0%9F%D1%80%D0%B8%D0%BC%D0%B5%D1%80%20%D0%B2%D1%85%D0%BE%D0%B4%D0%B0.jpg)

**Изменение списка покупок**

Этот вариант использования небходимо протестировать на:

* корректное добавления товара в список покупок;
* корректное удаление товара из списка покупок;

**Просмотр списка покупок**

Этот вариант использования небходимо протестировать на:

* корректное отображение товаров в списке покупок до и после изменения;

Также планируется проверить реализацию основных функций приложения

<a name="approaches"/>

## 6 Подскоды к тестированию
Для тестирования приложения будет использован ручной подход. Тестирование производится в операционной системе Windows 11 - на ASUS VivoBook 15.

<a name="results"/>

## 7 Представление результатов
Результаты тестирования представлены в документе ["Представление результатов"](https://github.com/lizakat/cookerbrain/blob/main/testing/Test%20results.md).

<a name="conclusion"/>

## 8 Вывод
Данный тестовый план позволяет протестировать основной функционал приложения. Успешное прохождение всех тестов не гарантирует полную работоспособность на всех версиях платформ и архитектурах, однако позволяет полагать, что данное программное обеспечение работает корректно. На момент прохождения тестирования с результатами в пункте 7, приложение не прошло некоторые тесты из-за недоработки некоторых аспектов. После окончательного завершения разработки проекта тестрование должно быть проведено повторно.
