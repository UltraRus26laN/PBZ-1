1. Запрос всех учебных предметов:
MATCH (n:Subject) return n

2. Запрос всех студентов, учащихся на платной основе:
MATCH (n:Student) WHERE n.type = 'Platnik' return n

3. Запрос всех учебных предметов сложностью от 2 до 6 не включительно:
MATCH (n:Subject) WHERE n.difficulty > 2 AND n.difficulty < 8 return n

4.Запрос преподавателей по каждому из предметов:
MATCH (n:Subject) return n.teacher

5. Запрос имени и фамилии студентов, отправленных на пересдачу по дисциплине ППвИС:
MATCH (n:Student)-[:PERESDACHA]->(m:Subject) WHERE m.name = 'PPvIS' return n.name, n.last_name

6. Запрос количества учебных предметов, по которым у студента Лихача Руслана автомат:
MATCH (n:Student)-[:AVTOMAT]->(m:Subject) WHERE n.name = "Ruslan" return count(m)

7. Запрос предметов, по которым у студента Евгения Сапежинского автомат:
MATCH (n:Student),(m:Subject) WHERE n.name = "Evgeniy" AND (n)-[:AVTOMAT]->(m) return m

8. Запрос студентом, отправленных преподавателем Сердюковым на пересдачу:
MATCH (n:Student),(m:Subject) WHERE m.teacher = "Serdukov" AND (n)-[:PERESDACHA]->(m) return n

9. Запрос всей справочной информации о студенте Новицком Роберте:
MATCH (n:Student) WHERE n.name = 'Robert' return n.name,n.last_name, n.age, n.type

10. Запрос общего количества пересдач по учебным предметам:
MATCH (n:Student)-[:PERESDACHA]->(m:Subject) return count(m)