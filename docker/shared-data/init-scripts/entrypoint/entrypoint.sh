#!/bin/bash
psql --username "postgres" -d "stroytrenddb" -f "/StroyTrend/sql-scripts/create-script.sql"
psql --username "postgres" -d "stroytrenddb"  <<-EOSQL
    START TRANSACTION;

    INSERT INTO "Projects" ("Id", "Name", "About")
    VALUES
        (1, 'Total Chats', 'First table'),
        (2, 'Duration', 'Second table'),
        (3, 'Ratings', 'Third table'),
        (4, 'Response time', 'Fourth table'),
        (5, 'Tags', 'Fifth table');



    INSERT INTO "Entries" ("Date", "Key", "Value", "ProjectId")
    VALUES
        ('2024-01-01', 'total', 760, 1),
        ('2024-01-02', 'total', 819, 1),
        ('2024-01-03', 'total', 815, 1),
        ('2024-01-04', 'total', 806, 1),
        ('2024-01-05', 'total', 721, 1),
        ('2024-01-06', 'total', 735, 1),
        ('2024-01-07', 'total', 742, 1),
        ('2024-01-08', 'total', 839, 1),
        ('2024-01-09', 'total', 766, 1),
        ('2024-01-10', 'total', 752, 1),
        ('2024-01-11', 'total', 807, 1),
        ('2024-01-12', 'total', 866, 1),
        ('2024-01-13', 'total', 895, 1),
        ('2024-01-14', 'total', 76, 1),


        ('2024-01-01', 'agents_chatting_duration', 407, 2),
        ('2024-01-01', 'count', 760, 2),
        ('2024-01-01', 'duration', 590, 2),

        ('2024-01-02', 'agents_chatting_duration', 394, 2),
        ('2024-01-02', 'count', 819, 2),
        ('2024-01-02', 'duration', 560, 2),

        ('2024-01-03', 'agents_chatting_duration', 396, 2),
        ('2024-01-03', 'count', 815, 2),
        ('2024-01-03', 'duration', 556, 2),

        ('2024-01-04', 'agents_chatting_duration', 444, 2),
        ('2024-01-04', 'count', 806, 2),
        ('2024-01-04', 'duration', 593, 2),

        ('2024-01-05', 'agents_chatting_duration', 420, 2),
        ('2024-01-05', 'count', 721, 2),
        ('2024-01-05', 'duration', 565, 2),

        ('2024-01-06', 'agents_chatting_duration', 381, 2),
        ('2024-01-06', 'count', 735, 2),
        ('2024-01-06', 'duration', 531, 2),

        ('2024-01-07', 'agents_chatting_duration', 385, 2),
        ('2024-01-07', 'count', 742, 2),
        ('2024-01-07', 'duration', 556, 2),

        ('2024-01-08', 'agents_chatting_duration', 461, 2),
        ('2024-01-08', 'count', 839, 2),
        ('2024-01-08', 'duration', 633, 2),

        ('2024-01-09', 'agents_chatting_duration', 470, 2),
        ('2024-01-09', 'count', 766, 2),
        ('2024-01-09', 'duration', 629, 2),
        
        ('2024-01-10', 'agents_chatting_duration', 385, 2),
        ('2024-01-10', 'count', 752, 2),
        ('2024-01-10', 'duration', 532, 2),

        ('2024-01-11', 'agents_chatting_duration', 438, 2),
        ('2024-01-11', 'count', 807, 2),
        ('2024-01-11', 'duration', 591, 2),

        ('2024-01-12', 'agents_chatting_duration', 388, 2),
        ('2024-01-12', 'count', 866, 2),
        ('2024-01-12', 'duration', 528, 2),

        ('2024-01-13', 'agents_chatting_duration', 465, 2),
        ('2024-01-13', 'count', 895, 2),
        ('2024-01-13', 'duration', 612, 2),

        ('2024-01-14', 'agents_chatting_duration', 410, 2),
        ('2024-01-14', 'count', 76, 2),
        ('2024-01-14', 'duration', 535, 2),


        ('2024-01-01', 'bad', 19, 3),
        ('2024-01-01', 'chats', 760, 3),
        ('2024-01-01', 'good', 78, 3),

        ('2024-01-02', 'bad', 19, 3),
        ('2024-01-02', 'chats', 819, 3),
        ('2024-01-02', 'good', 78, 3),

        ('2024-01-03', 'bad', 28, 3),
        ('2024-01-03', 'chats', 815, 3),
        ('2024-01-03', 'good', 68, 3),

        ('2024-01-04', 'bad', 25, 3),
        ('2024-01-04', 'chats', 806, 3),
        ('2024-01-04', 'good', 88, 3),

        ('2024-01-05', 'bad', 16, 3),
        ('2024-01-05', 'chats', 721, 3),
        ('2024-01-05', 'good', 81, 3),
        
        ('2024-01-06', 'bad', 12, 3),
        ('2024-01-06', 'chats', 735, 3),
        ('2024-01-06', 'good', 72, 3),

        ('2024-01-07', 'bad', 16, 3),
        ('2024-01-07', 'chats', 742, 3),
        ('2024-01-07', 'good', 81, 3),

        ('2024-01-08', 'bad', 21, 3),
        ('2024-01-08', 'chats', 839, 3),
        ('2024-01-08', 'good', 97, 3),

        ('2024-01-09', 'bad', 26, 3),
        ('2024-01-09', 'chats', 766, 3),
        ('2024-01-09', 'good', 54, 3),

        ('2024-01-10', 'bad', 26, 3),
        ('2024-01-10', 'chats', 752, 3),
        ('2024-01-10', 'good', 56, 3),

        ('2024-01-11', 'bad', 24, 3),
        ('2024-01-11', 'chats', 807, 3),
        ('2024-01-11', 'good', 73, 3),

        ('2024-01-12', 'bad', 26, 3),
        ('2024-01-12', 'chats', 866, 3),
        ('2024-01-12', 'good', 90, 3),

        ('2024-01-13', 'bad', 21, 3),
        ('2024-01-13', 'chats', 895, 3),
        ('2024-01-13', 'good', 71, 3),

        ('2024-01-14', 'chats', 76, 3),
        ('2024-01-14', 'good', 11, 3),


        ('2024-01-01', 'count', 583, 4),
        ('2024-01-01', 'response_time', 51.06, 4),

        ('2024-01-02', 'count', 637, 4),
        ('2024-01-02', 'response_time', 47.69, 4),

        ('2024-01-03', 'count', 624, 4),
        ('2024-01-03', 'response_time', 47.55, 4),

        ('2024-01-04', 'count', 626, 4),
        ('2024-01-04', 'response_time', 47.53, 4),

        ('2024-01-05', 'count', 555, 4),
        ('2024-01-05', 'response_time', 48.09, 4),

        ('2024-01-06', 'count', 558, 4),
        ('2024-01-06', 'response_time', 44.11, 4),

        ('2024-01-07', 'count', 552, 4),
        ('2024-01-07', 'response_time', 44.55, 4),

        ('2024-01-08', 'count', 677, 4),
        ('2024-01-08', 'response_time', 53.39, 4),

        ('2024-01-09', 'count', 588, 4),
        ('2024-01-09', 'response_time', 53.29, 4),

        ('2024-01-10', 'count', 582, 4),
        ('2024-01-10', 'response_time', 45.97, 4),

        ('2024-01-11', 'count', 633, 4),
        ('2024-01-11', 'response_time', 48.63, 4),

        ('2024-01-12', 'count', 618, 4),
        ('2024-01-12', 'response_time', 47.21, 4),

        ('2024-01-13', 'count', 662, 4),
        ('2024-01-13', 'response_time', 56, 4),

        ('2024-01-14', 'count', 54, 4),
        ('2024-01-14', 'response_time', 48.41, 4),


        ('2024-01-01', 'Adam', 13, 5),
        ('2024-01-01', 'Alex', 26, 5),
        ('2024-01-01', 'Chernozub.l', 15, 5),
        ('2024-01-01', 'Close - in progress', 18, 5),

        ('2024-01-02', 'Adam', 5, 5),

        ('2024-01-03', 'Steven', 18, 5),
        ('2024-01-03', 'Suhak I.', 8, 5),
        ('2024-01-03', 'Support', 364, 5),
        ('2024-01-03', 'TEST', 1, 5),
        ('2024-01-03', 'Tesliuk P.', 41, 5),
        ('2024-01-03', 'Tovkach S.', 8, 5),
        ('2024-01-03', 'Tsos I.', 39, 5),
        ('2024-01-03', 'Tymchuk O.', 32, 5),

        ('2024-01-04', 'Julian', 23, 5),
        ('2024-01-04', 'Kopusyak V.', 41, 5),
        ('2024-01-04', 'Kostiuchyk I.', 5, 5),
        ('2024-01-04', 'Lily', 12, 5),
        ('2024-01-04', 'Limit', 3, 5),
        ('2024-01-04', 'Lishchuk O.', 40, 5),
        ('2024-01-04', 'Lukomska D.', 18, 5),
        ('2024-01-04', 'Mironov V.', 7, 5),

        ('2024-01-05', 'Max', 1, 5),
        ('2024-01-05', 'Mia', 1, 5),

        ('2024-01-06', 'Kopusyak V.', 19, 5),
        ('2024-01-06', 'Kostiuchyk I.', 15, 5),
        ('2024-01-06', 'Liam', 1, 5),

        ('2024-01-07', 'Amelia', 35, 5),
        ('2024-01-07', 'Andrew', 1, 5),
        ('2024-01-07', 'VIP', 198, 5),
        ('2024-01-07', 'Vasylieva D.', 20, 5),
        ('2024-01-07', 'Veretelnyk M.', 6, 5),
        ('2024-01-07', 'Verification', 17, 5),

        ('2024-01-08', 'Withdrawal - general info', 65, 5),
        ('2024-01-08', 'Withdrawal issue', 21, 5),
        ('2024-01-08', 'Yaremenko.Yu', 8, 5),
        ('2024-01-08', 'Yevchuk L.', 17, 5),
        ('2024-01-08', 'Zhyzhko V.', 13, 5),

        ('2024-01-09', 'Support', 364, 5),
        ('2024-01-09', 'Tesliuk P.', 3, 5),
        ('2024-01-09', 'Tomakh D.', 9, 5),
        ('2024-01-09', 'Tsos I.', 24, 5),
        ('2024-01-09', 'Tymchuk O.', 7, 5),
        ('2024-01-09', 'VIP', 116, 5),

        ('2024-01-10', 'Alex', 34, 5),
        ('2024-01-10', 'Amy', 5, 5),
        ('2024-01-10', 'Babii B.', 11, 5),
        ('2024-01-10', 'Badalian M.', 37, 5),
        ('2024-01-10', 'Bidnenko I.', 34, 5),

        ('2024-01-11', 'Amy', 1, 5),
        ('2024-01-11', 'Badalian M.', 37, 5),
        ('2024-01-11', 'Bidnenko I.', 27, 5),
        ('2024-01-11', 'Bondar.B', 1, 5),
        ('2024-01-11', 'Bonus - general info', 28, 5),

        ('2024-01-12', 'Alex', 7, 5),
        ('2024-01-12', 'Amy', 7, 5),
        ('2024-01-12', 'Babii B.', 10, 5),
        ('2024-01-12', 'Badalian M.', 55, 5),

        ('2024-01-13', 'Mia', 3, 5),
        ('2024-01-13', 'Mironov V.', 13, 5),
        ('2024-01-13', 'Morrrigan', 1, 5),
        ('2024-01-13', 'NewVip', 1, 5),
        ('2024-01-13', 'Nikitina.O', 8, 5),
        ('2024-01-13', 'Reopen', 10, 5),
        ('2024-01-13', 'Review Left', 1, 5),
        ('2024-01-13', 'Review Requested', 1, 5),
        ('2024-01-13', 'Rudkovskyi.O', 2, 5),

        ('2024-01-14', 'Bonus - general info', 4, 5),
        ('2024-01-14', 'Casino Bonus', 25, 5),
        ('2024-01-14', 'Close - in progress', 3, 5),
        ('2024-01-14', 'Closed - PG/01', 1, 5),
        ('2024-01-14', 'Closed - Personal Reason/03', 1, 5),
        ('2024-01-14', 'Closure', 1, 5);

    COMMIT;
EOSQL