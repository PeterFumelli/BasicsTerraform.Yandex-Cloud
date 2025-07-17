# Домашнее задание к занятию "`Основы Terraform. Yandex Cloud`" - `Фумелли Петр`

### Задание 1

* Инициализируйте проект, выполните код. Исправьте намеренно допущенные синтаксические ошибки. Ответьте, в чём заключается их суть?

  * Ответ:
    * most_recent в data-ресурсе Yandex — не поддерживается
    * platform_id написан с ошибкой (standart-v4 вместо standard-v4)
    * не поддерживаемое количество ядер (cores = 1 на стандартных платформах, где минимум 2)
    * Неправильный путь к ключу (~ вместо абсолютного)

* Как могут пригодиться параметры preemptible = true и core_fraction = 5?

  * Ответ:
    * preemptible = true — ВМ может быть внезапно остановлена провайдером
    * core_fraction = 5 — ВМ получает только 5% от мощности одного CPU-ядра

* Скриншот ЛК Yandex Cloud с созданной ВМ, где видно внешний ip-адрес

![alt text](https://github.com/PeterFumelli/BasicsTerraform.Yandex-Cloud/blob/main/img/lk_yandex.png)

* Скриншот консоли, curl должен отобразить тот же внешний ip-адрес

![alt text](https://github.com/PeterFumelli/BasicsTerraform.Yandex-Cloud/blob/main/img/curl_ext_ip.png)


### Задание 4

* Вывод значений ip-адресов команды terraform output

![alt text](https://github.com/PeterFumelli/BasicsTerraform.Yandex-Cloud/blob/main/img/terraform%20output.png)
