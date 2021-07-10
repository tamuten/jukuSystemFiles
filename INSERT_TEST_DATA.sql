INSERT INTO lesson VALUES ('1', 'test', 'test', '50');
INSERT INTO lesson VALUES ('2', 'test', 'test', '1');
INSERT INTO lesson VALUES ('00000003', 'パズル道場【図形・思考力】', 'パズル【図・思】', '50');
INSERT INTO lesson VALUES ('00000004', 'パズル道場【数】', 'パズル【数】', '50');
INSERT INTO lesson VALUES ('00000005', '反復演習ジムeトレ＆eドリル', '演習', '50');
INSERT INTO lesson VALUES ('00000006', 'パズル道場【国語】', 'パズル【国】', '50');
INSERT INTO lesson VALUES ('00000007', '東進中学NET', '中学ネット', '50');
INSERT INTO lesson VALUES ('00000008', 'デイビッド・セイン英語ジム', 'セイン', '');
INSERT INTO lesson VALUES ('00000009', '東大個別指導会T・MEG', 'TMEG', '');
INSERT INTO lesson VALUES ('00000010', 'LOGICTREE', 'LOGICTREE', '');
INSERT INTO lesson VALUES ('00000011', '東進衛星予備校', '東進', '');
INSERT INTO course VALUES ('00000001', 'パズル道場 50分コース', 'パズル50', '11000', '00000003', '', '', '');
INSERT INTO course VALUES ('00000002', 'パズル道場 100分コース', 'パズル100', '16000', '00000003', '00000004', '', '');
INSERT INTO course VALUES ('00000003', 'パズル道場 150分コース', 'パズル150', '19000', '00000003', '00000004', '00000006', '');
INSERT INTO course VALUES ('00000004', '東進中学NET', '東進中学ネット', '35000', '00000007', '00000007', '00000005', '');
INSERT INTO course VALUES ('00000005', 'デイビッド・セイン英語ジムBasic 100分コース', 'セイン', '14000', '00000008', '00000008', '', '');
INSERT INTO course VALUES ('00000006', 'デイビッド・セイン英語ジムStandard 100分コース', 'セイン', '14000', '00000008', '00000008', '', '');
INSERT INTO course VALUES ('00000007', '反復演習ジムeトレ＆eドリル', '演習', '16000', '00000005', '00000005', '', '');
INSERT INTO course VALUES ('00000008', 'LOGICTREE', 'LOGICTREE', '12000', '00000010', '', '', '');
INSERT INTO course VALUES ('00000009', '東進衛星予備校', '東進', '40000', '00000011', '00000011', '', '');
INSERT INTO course VALUES ('00000010', '東大個別指導会 T・MEG', 'TMEG', '29000', '00000009', '00000009', '', '');
INSERT INTO course VALUES ('00000011', 'デイビッド・セイン英語ジムPremium 200分コース', 'セインPremium', '30000', '00000008', '00000008', '00000008', '00000008');
INSERT INTO grade VALUES ('1', '年少');
INSERT INTO grade VALUES ('2', '年中');
INSERT INTO grade VALUES ('3', '年長');
INSERT INTO grade VALUES ('4', '小１');
INSERT INTO grade VALUES ('5', '小２');
INSERT INTO grade VALUES ('6', '小３');
INSERT INTO grade VALUES ('7', '小４');
INSERT INTO grade VALUES ('8', '小５');
INSERT INTO grade VALUES ('9', '小６');
INSERT INTO grade VALUES ('10', '中１');
INSERT INTO grade VALUES ('11', '中２');
INSERT INTO grade VALUES ('12', '中３');
INSERT INTO grade VALUES ('13', '高１');
INSERT INTO grade VALUES ('14', '高２');
INSERT INTO grade VALUES ('15', '高３');
INSERT INTO grade VALUES ('16', '一般');
INSERT INTO timed VALUES ('1', '１限', '09:00', '10:20', 'True');
INSERT INTO timed VALUES ('2', '２限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('3', '３限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('4', '４限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('5', '５限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('6', '６限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('7', '７限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('8', '８限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('9', '９限', NULL, NULL, 'True');
INSERT INTO timed VALUES ('10', '１０限', NULL, NULL, 'True');

