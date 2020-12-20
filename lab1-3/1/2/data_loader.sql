INSERT INTO providers(id, name, status, city)
VALUES ('П1', 'Петров', 20, 'Москва');
INSERT INTO providers(id, name, status, city)
VALUES ('П2', 'Синицын', 10, 'Таллин');
INSERT INTO providers(id, name, status, city)
VALUES ('П3', 'Федоров', 30, 'Таллин');
INSERT INTO providers(id, name, status, city)
VALUES ('П4', 'Чаянов', 20, 'Минск');
INSERT INTO providers(id, name, status, city)
VALUES ('П5', 'Крюков', 30, 'Киев');

INSERT INTO details(id, name, color, size, city)
VALUES ('Д1', 'Болт', 'Красный', 12, 'Москва');
INSERT INTO details(id, name, color, size, city)
VALUES ('Д2', 'Гайка', 'Зеленая', 17, 'Минск');
INSERT INTO details(id, name, color, size, city)
VALUES ('Д3', 'Диск', 'Черный', 17, 'Вильнюс');
INSERT INTO details(id, name, color, size, city)
VALUES ('Д4', 'Диск', 'Черный', 14, 'Москва');
INSERT INTO details(id, name, color, size, city)
VALUES ('Д5', 'Корпус', 'Красный', 12, 'Минск');
INSERT INTO details(id, name, color, size, city)
VALUES ('Д6', 'Крышки', 'Красный', 19, 'Москва');

INSERT INTO projects(id, name, city)
VALUES ('ПР1', 'ИПР1', 'Минск');
INSERT INTO projects(id, name, city)
VALUES ('ПР2', 'ИПР2', 'Таллин');
INSERT INTO projects(id, name, city)
VALUES ('ПР3', 'ИПР3', 'Псков');
INSERT INTO projects(id, name, city)
VALUES ('ПР4', 'ИПР4', 'Псков');
INSERT INTO projects(id, name, city)
VALUES ('ПР5', 'ИПР5', 'Москва');
INSERT INTO projects(id, name, city)
VALUES ('ПР6', 'ИПР6', 'Саратов');
INSERT INTO projects(id, name, city)
VALUES ('ПР7', 'ИПР7', 'Москва');

INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П1', 'Д1', 'ПР1', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П1', 'Д1', 'ПР2', 700);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д3', 'ПР1', 400);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д2', 'ПР2', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д3', 'ПР3', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д3', 'ПР4', 500);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д3', 'ПР5', 600);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д3', 'ПР6', 400);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д3', 'ПР7', 800);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П3', 'Д3', 'ПР1', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П3', 'Д4', 'ПР2', 500);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П4', 'Д6', 'ПР3', 300);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П2', 'Д5', 'ПР2', 100);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П4', 'Д6', 'ПР7', 300);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д2', 'ПР2', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д2', 'ПР4', 100);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д5', 'ПР5', 500);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д5', 'ПР7', 100);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д6', 'ПР2', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д1', 'ПР2', 100);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д3', 'ПР4', 200);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д4', 'ПР4', 800);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д5', 'ПР4', 400);
INSERT INTO provider_project_detail_numbers(provider_id, detail_id, project_id, quantity)
VALUES ('П5', 'Д6', 'ПР4', 500);