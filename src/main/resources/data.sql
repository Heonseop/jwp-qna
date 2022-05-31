INSERT INTO USER (id, user_id, password, name, created_at) VALUES (1001, 'user1', 'abcd', '안드로이드', '2022-05-23 02:30:11');
INSERT INTO USER (id, user_id, password, name, created_at) VALUES (1002, 'user2', 'efgh', '터미네이터', '2022-05-24 01:37:11');
INSERT INTO QUESTION (id, title, contents, deleted, created_at) VALUES (2001, '집', '너의 집은 어디인가', false, '2022-05-24 01:37:11');
INSERT INTO QUESTION (id, title, contents, deleted, created_at) VALUES (2002, '학교', '출신 학교는 어디인가', false, '2022-05-24 01:37:11');
INSERT INTO QUESTION (id, title, contents, deleted, created_at) VALUES (2003, '차', '버스가 보이는 화면을 선택하세요', false, '2022-05-24 01:37:11');
INSERT INTO QUESTION (id, title, contents, deleted, created_at) VALUES (2004, '차', '버스가 보이는 화면을 선택하세요', true, '2022-05-24 01:37:11');
INSERT INTO ANSWER (id, writer_id, question_id, contents, deleted, created_at) VALUES (3001, 1001, 2002, '수원', false, '2022-05-24 01:37:11');
INSERT INTO ANSWER (id, writer_id, question_id, contents, deleted, created_at) VALUES (3002, 1002, 2001, '한국대', true, '2022-05-24 01:37:11');
INSERT INTO ANSWER (id, writer_id, question_id, contents, deleted, created_at) VALUES (3003, 1001, 2003, '1', false, '2022-05-24 01:37:11');
INSERT INTO ANSWER (id, writer_id, question_id, contents, deleted, created_at) VALUES (3004, 1001, 2003, '4', false, '2022-05-24 01:37:11');
INSERT INTO ANSWER (id, writer_id, question_id, contents, deleted, created_at) VALUES (3005, 1001, 2003, '5', true, '2022-05-24 01:37:11');
INSERT INTO DELETE_HISTORY (id, content_type, content_id, deleted_by_id) VALUES (4001, 'QUESTION', 2001, 1001);
INSERT INTO DELETE_HISTORY (id, content_type, content_id, deleted_by_id) VALUES (4002, 'ANSWER', 3001, 1002);
INSERT INTO DELETE_HISTORY (id, content_type, content_id, deleted_by_id) VALUES (4003, 'ANSWER', 3005, 1002);