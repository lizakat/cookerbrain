# Требования к проекту
---
# Содержание
1 [Введение](#intro)  
1.1 [Назначение](#appointment)  
1.2 [Бизнес-требования](#business_requirements)  
1.2.1 [Исходные данные](#initial_data)  
1.2.2 [Возможности бизнеса](#business_opportunities)  
1.2.3 [Границы проекта](#project_boundary)  
1.3 [Аналоги](#analogues)  
2 [Требования пользователя](#user_requirements)  
2.1 [Интерфейс пользователя](#user_interface)  
2.2 [Характеристики пользователей](#user_specifications)  
2.2.1 [Классы пользователей](#user_classes)  
2.2.2 [Аудитория приложения](#application_audience)  
2.2.2.1 [Целевая аудитория](#target_audience)  
2.2.2.1 [Побочная аудитория](#collateral_audience)  
3.1 [Функциональные требования](#functional_requirements)   
3.1.1 [Основные функции](#main_functions)   
3.1.1.1 [Вход пользователя в приложение](#function1)  
3.1.1.2 [Настройка профиля активного пользователя](#3112-настройка-профиля-активного-пользователя)  
3.1.1.3 [Создание списка покупок](#3113-создание-списка-покупок)   
3.1.1.4 [Создание собственных рецептов](#3114-создание-собственных-рецептов)  
3.1.1.5 [Переход пользователя в Аккаунт](#3115-переход-пользователя-в-аккаунт)  
3.1.2 [Ограничения и исключения](#312-ограничения-и-исключения)  
3.2 [Нефункциональные требования](#32-нефункциональные-требования)   
3.2.1 [Атрибуты качества](#321-атрибуты-качества)   
3.2.1.1 [Требования к удобству использования](#3211-требования-к-удобству-использования)  
3.2.1.2 [Требования к безопасности](#3212-требования-к-безопасности)  
3.2.1.3 [Требования к доступности](#3213-требования-к-доступности)  
3.2.2 [Внешние интерфейсы](#322-внешние-интерфейсы)  
3.2.3 [Ограничения](#323-ограничения)  

<a name="intro"/>

# 1 Введение

<a name="appointment"/>

## 1.1 Назначение
Этот документ представляет собой описание функциональных и нефункциональных требований к разрабатываемому веб-приложению "Cooker brain". Его цель  - предоставление команде, ответственной за разработку и тестирование приложения, чёткого понимания того, как приложение должно функционировать, каким стандартам качества оно должно соответствовать.

<a name="business_requirements"/>

## 1.2 Бизнес требования

<a name="initial_data"/>

### 1.2.1 Исходные данные

Многие из нас проводят свободное время за готовкой вкусных блюд. У каждого из нас есть свои предпочтения в кулинарии, любимые рецепты и ингредиенты. Иногда возникает необходимость получить информацию о рецепте такую, как список ингредиентов, шаги приготовления и время приготовления. Тогда пользователи обращаются за помощью к интернету, где они могут легко найти всю необходимую информацию.
<a name="business_opportunities"/>

### 1.2.2 Возможности бизнеса
Многие люди хотели бы пользоваться приложением, которое сделает кулинарное творчество доступным для всех, независимо от их технических навыков. Такое веб-приложение поможет им сократить время, затрачиваемое на поиск рецептов, и обеспечит доступ к информации даже без интернета. Простой и интуитивно понятный интерфейс, разработанный с учетом всех возрастных групп, позволит еще большему числу людей наслаждаться приготовлением блюд.
<a name="project_boundary"/>

### 1.2.3 Границы проекта
Веб-приложение "Cooker brain" позволит зарегистрированным пользователям просматривать большое количество рецептов в различных категориях, необходимые ингредиенты, затрачиваемое время на приготовление. Также будут предоставлены возможности по добавлению:
1) Рецептов в "Избраннное",
2) Собственных рецептов,
3) Отсутствующих ингредиентов в "Список покупок"  

<a name="analogues"/>

## 1.3 Аналоги
Аналогами являются такие приложения как Tasty, Yummly, Aсобае.

<a name="comparison_of_analogues"/>

# 2 Требования пользователя

<a name="software_interfaces"/>

## 2.1 Интерфейс пользователя
В возможности зарегистрированного пользователя включено:
1. Поиск рецептов
2. Создание списка покупок 
3. Добавление собственных рецептов 
4. Создание коллекции избранных рецептов 

<a name="user_specifications"/>

## 2.2 Характеритстики пользователей

<a name="user_classes"/>

### 2.2.1 Классы пользователей
1. Посетители	
Пользователи, которые не хотят регистрироваться в приложении. Имеют доступ к частичному функционалу.
2. Зарегистрированные пользователи
Пользователи, которые вошли в приложение под своим именем.Имеют доступ к полному функционалу.
<a name="application_audience"/>

### 2.2.2 Аудитория приложения

<a name="target_audience"/>

#### 2.2.2.1 Целевая аудитория
Люди, любящие проводить свой досуг за приготовлением различных блюд.
<a name="collateral_audience"/>

#### 2.2.2.2 Побочная аудитория
Люди, проводящие свой досуг не за приготовлением различных блюд.

<a name="assumptions_and_dependencies"/>


# 3 Системные требования

<a name="functional_requirements"/>

## 3.1 Функциональные требования

<a name="main_functions"/>

### 3.1.1 Основные функции

<a name="function1"/>

#### 3.1.1.1 Вход пользователя в приложение
1. Регистрация нового пользователя:
Приложение должно предоставить пользователю возможность ввести имя и пароль для создания учётной записи. Пользователь может либо ввести данные, либо отменить действие.

2. Пользователь с таким именем уже существует:
Приложение должно уведомить пользователя о невозможности регистрации с данным именем и запросить ввод другого имени. Пользователь может либо ввести новое имя, либо отменить действие.

3. Вход зарегистрированного пользователя в приложение:
Приложение должно предоставить пользователю список имен зарегистрированных пользователей. Пользователь может либо выбрать свое имя из списка, либо отменить действие.
<a name="function2"/>

#### 3.1.1.2 Настройка профиля активного пользователя
Основной функцией для пользователя является поиск интересующих рецептов. Для удобства, рецепты разделены на категории, например, "Десерты". Выбрав категорию, пользователю предоставляется возможность просмотра конкретных рецептов. Во вкладке выбранного рецепта пользователь может найти следующую информацию:

1. Фотография блюда;
2. Время приготовления;
3. Список необходимых ингредиентов;
4. Пошаговый способ приготовления;

Кроме того, при переходе в данную вкладку, пользователю предоставляется возможность создания списка покупок, что является одной из особенностей данного приложения.

<a name="function3"/>

#### 3.1.1.3 Создание списка покупок
При необходимости пользователь может создать список покупок. 

Основные функции:
1. Добавление нужного ингредиента
2. Удаление купленного ингредиента

<a name="function4"/>

#### 3.1.1.4 Создание собственных рецептов
При желании пользователь может добавить свой собственный рецепт. 
Для этого предоставляются функции по добавлению:

1. Названия;
2. Фото;
3. Времени приготовления;
4. Необходимых ингредиентов;
5. Способу приготовления.



<a name="function5"/>

#### 3.1.1.5 Переход пользователя в Аккаунт
Во вкладке "Аккаунт" содержатся все необходимые функции:
1. Добавление собственных рецептов;
2. Переход к добавленным рецептам;
3. Переход к избранным рецептам.
<a name="function6"/>


### 3.1.2 Ограничения и исключения
Возможность работы приложения только при подключении к Интернету.

<a name="non-functional_requirements"/>

## 3.2 Нефункциональные требования

<a name="quality_attributes"/>

### 3.2.1 Атрибуты качества

<a name="requirements_for_ease_of_use"/>

#### 3.2.1.1 Требования к удобству использования
1. Приложение полностью осуществляет все основные функции;
2. Каждый элемент пользовательского интерфейса имеет название, которое описывает действие, совершаемое при его выборе;
3. Интерфейс приложения не содержит лишних элементов.

<a name="security_requirements"/>

#### 3.2.1.2 Требования к безопасности
Приложение предоставляет активному пользователю доступ к его учётной записи, где содержится вся сохранённая им информация.
<a name="access_requirements"/>

#### 3.2.1.3 Требования к доступности
Время реакции на действия пользователя минимально.

<a name="external_interfaces"/>

### 3.2.2 Внешние интерфейсы
Окна приложения удобны для использования пользователями:

1. Размер шрифта не должен быть слишком маленьким;
2. Интерфейс оформлен в соответствии со стандартами.

<a name="restrictions"/>

### 3.2.3 Ограничения
1. Веб-приложение реализовано для ОС Windows;
2. Язык, на котором реализована программа, - Java.
