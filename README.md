[![Actions Status](https://github.com/Muz4k/devops-for-programmers-project-lvl2/workflows/hexlet-check/badge.svg)](https://github.com/Muz4k/devops-for-programmers-project-lvl2/actions)

## Учись готовить свои redmine-контейнеры на серверах проще! ^_^

## Условия:
- Ansible 2.9+
- Хорошее настроение

### Коллекции и роли уже есть в репозитории, но при желании их можно добавить еще раз:
```
make add-requirements
```

### Храни пароль от ansible vault в ```~/.ansible_pass.txt``` , это поможет тебе 
 ### * шифровать переменные
```
make encrypt-string secret_value='foo' secret_name='bar'
```

### * расшифровывать переменные
```
make show-encrypted-string secret_name=postgres_host path_to_file=group_vars/webservers.yml
```

## И ты даже сможешь

### деплоить приложение на любое количество серверов
### (прописанных в ./inventory.ini)
```
make start-playbook
```

## А если освоишь балансеры в Digital Ocean - спрячешь их под один домен и создашь свой собственный [клуб](https://project.gitpushforce.club/)!