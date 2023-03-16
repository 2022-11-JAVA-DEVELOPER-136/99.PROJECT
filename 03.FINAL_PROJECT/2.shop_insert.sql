SET DEFINE OFF
--회원등급(회원등급번호,회원등급,회원적립률)
INSERT INTO MGDETAIL VALUES(MGNO_SEQ.NEXTVAL,'일반',0.03);
INSERT INTO MGDETAIL VALUES(MGNO_SEQ.NEXTVAL,'VIP',0.05);
INSERT INTO MGDETAIL VALUES(MGNO_SEQ.NEXTVAL,'관리자',0);

--회원로그인(회원번호,회원아이디,회원비밀번호,회원등급번호)
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'youngmin','123456a',1);                                        
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'munseon','123456a',1);
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'hyeongrae','123456a',1);
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'myounghun','123456a',2);
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'jeehye','123456a',2);
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'daeho','123456a',3);
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'juhyung','123456a',2);
INSERT INTO MLOGIN VALUES(MNO_SEQ.NEXTVAL,'yungjin','123456a',1);

--회원상세(회원번호,회원이름,회원주소,회원전화번호,회원마일리지,회원이메일,회원가입일)
INSERT INTO MDETAIL VALUES(1,'조영민','경상남도 진주시 성북동','01087519862',DEFAULT,'youngmin@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(2,'공문선','울산광역시 남구 대현동','01054761287',DEFAULT,'munseon@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(3,'노형래','대전광역시 유성구 진잠동','01036544927',DEFAULT,'hyeongrae@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(4,'류명훈','인천광역시 계양구 계산4동','01017493154',DEFAULT,'myounghun@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(5,'이지혜','광주광역시 북구 석곡동','01033649754',DEFAULT,'jeehye@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(6,'오대호','서울특별시 송파구 삼전동','01017154795',DEFAULT,'daeho@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(7,'이주형','서울특별시 광진구 구의동','01097874743',DEFAULT,'juhyung@naver.com',SYSDATE);
INSERT INTO MDETAIL VALUES(8,'탁영진','경기도 과천시 문원동','01016257495',DEFAULT,'yungjin@naver.com',SYSDATE);

--카테고리(분류번호,분류이름,상위분류번호)
INSERT INTO CATE VALUES(99,'미분류',NULL);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'국내도서',NULL);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'외국도서',NULL);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'소설',1);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'자기계발',1);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'인문과학',1);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'전문서적',1);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'소설',2);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'자기계발',2);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'인문과학',2);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'전문서적',2);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'코믹',1);
INSERT INTO CATE VALUES(CGNO_SEQ.NEXTVAL,'코믹',2);

--도서(도서번호,도서제목,도서분류,도서원가,할인율,판매가,재고,저자,출판사,출판일,도서이미지)
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'나미야 잡화점의 기적',3,13000,0.05,12350,8,'히가시노게이고','현대문학(주)','2012/12/19','bt_b1.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'너를 놓아줄게',3,13000,0.03,12350,8,'클레어맥킨토시','나무의철학','2016/03/15','bt_b2.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'The Miraculous Journey of Edward Tulane',7,7400,0.05,7030,9,'케이트디카밀로','BT외서','2009/05/27','bt_b3.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'The One Thing',10,25000,0.05,23750,9,'Philippin, Frank','BT외서','2013/07/04','bt_b4.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'지적대화를 위한 넓고얕은 지식',5,13300,0.05,13000,7,'채사장','한빛비즈㈜','2014/11/24','bt_b5.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'지적대화를 위한 넓고얕은 지식2',5,13300,0.05,13000,7,'채사장','한빛비즈㈜','2015/01/16','bt_b6.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'시빌 워: 프론트 라인 Book. 1',11,16000,0.05,15200,7,'폴 젠킨스','시공사','2016/04/25','bt_b7.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'시빌 워: 프론트 라인 Book. 2',11,12000,0.05,11400,7,'폴 젠킨스','시공사','2016/04/25','bt_b8.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'SPIDER-MAN/DEADPOOL (2016) #1',12,14000,0.05,13300,9,'Joe Kelly','Marvel Universe','2016/01/06','bt_b9.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'SPIDER-MAN/DEADPOOL (2016) #2',12,14000,0.05,13300,9,'Joe Kelly','Marvel Universe','2016/02/10','bt_b10.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'MARVEL UNIVERSE AVENGERS ASSEMBLE: CIVIL WAR (2016) #1',12,15000,0.05,14250,8,'Mark Basso','Marvel Adventures','2016/03/02','bt_b11.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'SUPERMAN: THE MAN OF STEEL VOL. 9',12,32000,0.1,28800,8,'John Byrne','DC Comics','2016/04/27','bt_b12.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'INJUSTICE: GODS AMONG US YEAR THREE VOL. 2',12,34000,0.1,30600,8,'Brian Buccellato','DC Comics','2016/02/10','bt_b13.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'The Walking Dead: Compendium Three',12,46000,0.1,41400,8,'Robert Kirkman','Image Comics','2015/10/13','bt_b14.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'Roche Limit: Monadic #2',12,12000,0.05,11400,8,'Michael Moreci','Image Comics','2016/04/27','bt_b15.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'나는 왜 저 인간이 싫을까?',4,13000,0.1,11700,9,'오카다 다카시','동양북스','2016/04/10','bt_b16.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'人間アレルギ- なぜ「あの人」を嫌いになるのか',8,17470,0.1,16250,9,'岡田尊司／著',' 新潮社','2015/06/01','bt_b17.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'대한민국에서 일하는 엄마로 산다는 것',4,14000,0.1,12600,9,'신의진','걷는나무','2014/02/28','bt_b18.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'Leaders Eat Last',8,38900,0.18,31898,8,'Simon Sinek','Penguin Publishing Group','2014/07/01','bt_b19.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'한글 : 세종이 발명한 최고의 알파벳',5,12000,0.05,11400,9,'김영욱','루덴스','2007/10/09','bt_b20.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'중력파, 아인슈타인의 마지막 선물',5,16000,0.1,14400,9,'오정근','동아시아','2016/02/29','bt_b21.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'Justice: What’s the Right Thing to Do?',9,17900,0.50,8950,9,'Michael J. Sandel','MacMillan Audio','2010/08/17','bt_b22.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'On Intelligence',9,25040,0.2,20032,9,'Hawkins,Jeff','Owl Books (NY)','2005/08/01','bt_b23.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'IoT(사물인터넷) 지식능력검정',6,25000,0.1,22500,9,'강양기','진한엠앤비','2016/03/11','bt_b24.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'김원욱 형법 세트',6,46000,0.25,34500,9,'김원욱','웅비','2014/10/22','bt_b25.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'The Cell  : A Molecular Approach',10,80000,0,80000,9,'Cooper, Geoffrey M./ Hausman','Sinauer Associates','2013/02/01','bt_b26.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'Who Was Winston Churchill?',10,5000,0.5,2500,10,'Ellen Labrecque','Grosset & Dunlap','2015/04/21','bt_b27.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'꿈꾸는 책들의 도시',3,19000,0.1,17100,10,'발터뫼르시','들녘','2014/08/04','bt_b28.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'7년의 밤',3,13000,0.1,11700,10,'정유저','은행나무','2011/03/23','bt_b29.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'THE Martian',7,12000,0.28,8640,10,'Andy weir','Ebury Press','2015/08/27','bt_b30.jpg');
INSERT INTO BOOK VALUES(BNO_SEQ.NEXTVAL,'THE Liitle Prince',7,13100,0.4,7860,10,'Antoine De Saint-Exupery','Harvest Books','2000/05/01','bt_b31.jpg');

--도서상세(도서설명번호,도서번호,도서설명)
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,1,'따뜻한 고민 상담실 ‘나미야 잡화점’으로 오세요! 30여 년간 비어 있던 오래된 가게인 나미야 잡화점. 어느 날 그곳에 경찰의 눈을 피해 달아나던 삼인조 도둑이 숨어든다. 난데없이 ‘나미야 잡화점 주인’ 앞으로 의문의 편지 한 통이 도착하고, 세 사람은 얼떨결에 편지를 열어본다. 처음에는 장난이라고 생각하던 세 사람은 어느새 편지 내용에 이끌려 답장을 해주기 시작하는데….');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,2,'무엇이 범죄를 저지르고 숨기게 하는가! 제이콥 조던이라는 다섯 살 아이가 뺑소니차에 치어 숨진 사건으로 시작되는 이야기는 브리스톨 경찰청의 경위 레이 스티븐스, 젊은 조각가 제나 그레이, 제나 그레이의 남편 이안 피터슨을 화자로 내세워 등장인물 각자의 정황을 드러내고 감정을 이끌며 사고란 불가항력이며, 어느 누구도 피해자 혹은 피의자가 되기를 원치 않는다는 근본적인 심리를 바라보게 한다.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,3,'Once, in a house on Egypt Street, there lived a china rabbit named Edward Tulane. The rabbit was very pleased with himself, and for good reason: he was owned by a girl named Abilene, who adored him completely. And then, one day, he was lost. . . . Kate DiCamillo takes us on an extraordinary journey, from the depths of the ocean to the net of a fisherman, from the bedside of an ailing child to the bustling streets of Memphis. Along the way, we are shown a miracle -- that even a heart of the most breakable kind can learn to love, to lose, and to love again. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,4,'NOW YOU CAN HAVE BOTH-LESS AND MORE. In The ONE Thing, you''ll learn to cut through the clutter achieve better results in less time build momentum toward your goal dial down the stress overcome that overwhelmed feeling revive your energy stay on track master what matters to you The ONE Thing is the New York Times bestseller which delivers extraordinary results in every area of your life-work, personal, family, and spiritual. WHAT''S YOUR ONE THING?');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,5,'여기, 신자유주의가 뭔지, 보수와 진보가 무엇인지, 왜 사회문제가 일어나는지 도무지 알 수가 없어 대화 자리가 두려운 당신을 위한 책이 출간되었다. 글쓰기와 강연 등을 통해 많은 사람에게 ‘넓고 얕은 지식’을 알리고 있는 채사장의 『지적 대화를 위한 넓고 얕은 지식』으로, 인기리에 연재되고 있는 팟캐스트 방송 《지대넓얕》을 책으로 재구성한 것이다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,6,'여기, 철학과 과학, 예술, 종교나 신비는 난해하고 이해할 수 없다며 애써 외면하던 사람들을 위한 책이 출간되었다. 인기리에 연재되고 있는 팟캐스트 방송 《지대넓얕》을 책으로 재구성한 『지적 대화를 위한 넓고 얕은 지식』으로, 역사부터 윤리까지의 방대한 영역을 다루면서도 각 분야의 구조적 연계성을 고려하여 출간된 지 열흘 만에 큰 화제를 모았던 전편에 이은 후속이다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,7,'히어로즈 그래픽 노블 [시빌 워: 프론트 라인 Book] 제1권. 폴 젠킨스의 [시빌 워: 프론트 라인]은 내전의 심층부에 자리한 ‘진실’을 보수 언론을 대표하는 신문사 데일리 뷰글의 베테랑 기자 벤 유릭과 진보적인 언론사 얼터너티브의 기자 샐리 플로이드의 눈을 통해 살피는 작품이다. 구성은 독특하게도 세 가지 플롯이 교차하면서 전개되고, 여기에 별도로 은유적이면서도 시사적인 에피소드 “전장의 편지”가 이야기 중간에 삽입되면서 묘한 긴장감을 연출한다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,8,'히어로즈 그래픽 노블 [시빌 워: 프론트 라인 Book] 제2권. 폴 젠킨스의 [시빌 워: 프론트 라인]은 이 내전의 심층부에 자리한 ‘진실’을 보수 언론을 대표하는 신문사 데일리 뷰글의 베테랑 기자 벤 유릭과 진보적인 언론사 얼터너티브의 기자 샐리 플로이드의 눈을 통해 살피는 작품이다. 구성은 독특하게도 세 가지 플롯이 교차하면서 전개되고, 여기에 별도로 은유적이면서도 시사적인 에피소드 “전장의 편지”가 이야기 중간에 삽입되면서 묘한 긴장감을 연출한다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,9,'Because you demanded it! The Webbed Wonder and the Merc with a Mouth are teaming up for their first ongoing series ever! It''s action, adventure and just a smattering of (b)romance in this episodic epic featuring the World''s Greatest Super Hero and the star of the World''s Greatest Comics Magazine. Talk about a real dynamic duo! Plus, a special bonus book Vision #1 included!');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,10,'Spidey and Deady (Pooly?) get a visit from Miles Morales! A goblin invasion puts Deadpool and the Spider-Men in a tight spot!');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,11,'SECRETS THREATEN TO DESTROY THE AVENGERS! Find out the secret Iron Man has kept from the team...and how it will change the Avengers'' future! Captain America takes a stand against Iron Man! It''s time: whose side are you on?');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,12,'In these tales from SUPERMAN #19-22, SUPERMAN ANNUAL #2 and ADVENTURES OF SUPERMAN #441-444, the mysterious Supergirl meets Superman for the first time! Plus, the Man of Steel faces Mr. Mxyzptlk, runs into the Doom Patrol and battles Metallo! And Lex Luthor is tricked into releasing  ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,13,'Both sides of the superhero conflict between Superman and Batman have summoned magical beings of unimaginable power to fight by their sides-but when it appears that neither team can control the forces that they have brought into this war, it may already be too late. The two groups of battle-scarred heroes must forge an alliance to end the carnage they''ve created. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,14,'Just in time for the new season of The Walking Dead on AMC, the fan-favorite, New York Times best-seller series returns with its third massive paperback collection! With over 1,000 pages, this volume contains the next chapter of Robert Kirkman''s Eisner Award-winning continuing story of survival horror. Rick Grimesa[trademark] dream of rebuilding civilization is tested as the people of Alexandria come into contact with other communities that have developed their own methods of survival.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,15,'Sasha goes on a bold adventure; Alex reveals a terrifying threat.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,16,'가족이 해체되고 1인 가구가 비약적으로 늘어난 현대 사회를 가장 대표하는 정서는 ‘분노와 외로움’이다. 이 책의 저자 오카다 다카시는 현대인이 앓고 있는 분노와 외로움이 타인에 대한 거부감, 급기야는 인간에 대한 혐오감으로 나타나는 증상을 ‘인간 알레르기’라고 명명하였다.이 책 『나는 왜 저 인간이 싫을까?』는 심리학과 철학을 공부한 저자의 경력을 바탕으로 인간 알레르기가 발생하는 원인과 그 대처법을 살펴보고, 27년이라는 임상 경험에서 살펴본 사례들을 들려준다.  ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,17,'親友、親子、夫婦、上司と部下――良好だった関係が、なぜ急にうまくいかなくなるのか。身体のアレルギー反応と同じく、人間の心には人間を拒絶する仕組みがあった！その全貌と核心を、ベテラン精神科医が、臨床と研究から解き明かす。');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,18,'그 어떤 순간에도 아이 때문에 일을 포기하지 마라! 따끔하지만 가장 현실적인 조언 33가지『대한민국에서 일하는 엄마로 산다는 것』. 성공한 소아정신과 의사이자 두 아이를 키운 엄마 신의진이 대한민국의 모든 엄마들을 위하여 일과 삶, 육아에 대한 속 시원한 대답을 고스란히 담아낸 책이다. 수많은 시행착오 속에서도 늘 대안을 찾으려고 애쓰며 일과 육아 사이의 균형을 맞춰간 저자의 경험을 통해 아이도 잘 키우고 일도 잘하는 게 결코 불가능한 목표가 아님을 깨닫게 해준다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,19,'Why do only a few people get to say “I love my job”? It seems unfair that finding fulfillment at work is like winning a lottery; that only a few lucky ones get to feel valued by their organizations, to feel like they belong.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,20,'컴퓨터와 휴대폰의 언어로 그 우수함을 세계에 입증하고 있는 한글. 이 책은 세종의 이야기를 통해 한글 창제와 그 운영 원리를 밝히고 있다. 대왕의 인품과 학문적 열정, 평화 국가로 나아가기 위한 문화 군주로서의 노력, 아내 소헌왕후와의 사랑과 아들 문종과 함께 한 창제 동업의 비화 등, 우리가 알지 못했던 비밀들이 이 작은 한 권의 책자 속에 가득하다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,21,'중력을 기술하는 뉴턴의 이론과 아인슈타인의 일반상대성이론에 대한 소개와 간략한 고찰을 역사적 사건을 중심으로 기술했다. 중력파 검출 실험을 최초로 시작한 조지프 웨버의 선구자적인 노력과 이와 관련된 역사적 사건들과 함께, 웨버의 ‘바 검출기’로부터 중력파의 검출기가 어떻게 발전되어왔는지를 이야기했다. 또한 물리학과 천문학적인 관점에서 중력파의 성공적인 검출이 가져다주게 될 혜택과 그 파급효과, 그리고 과학적 가능성에 대해 전망한다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,22,'Affirmative action, same-sex marriage, physician-assisted suicide, abortion, national service, the moral limits of markets―Sandel relates the big questions of political philosophy to the most vexing issues of the day, and shows how a surer grasp of philosophy can help us make sense of politics, morality, and our own convictions as well. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,23,'Jeff Hawkins, the man who created the PalmPilot, Treo smart phone, and other handheld devices, has reshaped our relationship to computers. Now he stands ready to revolutionize both neuroscience and computing in one stroke, with a new understanding of intelligence itself.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,24,'우리 주변에 있는 모든 사물이 인터넷으로 연결되어 사물과 사물, 사물과 인간이 서로 소통함으로써 사람들이 더 편리하고 안전한 삶을 누릴 수 있는 세상을 만들어가겠다는 이야기가 현실화되고 있다. 사물인터넷은 초연결 사회를 상상하는 것에서부터 시작한다. [IoT(사물인터넷) 지식능력검정]은 우리나라의 IoT 선도국가로써 위상 제고 및 전 산업의 경쟁력 강화와 IoT 인력의 저변확대, 각 산업 분야의 IoT 도입을 촉진하는 선도인력을 양성하기 위해 쓴 책이다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,25,'제1편 형법서론  1. 형법의 기본개념 2. 죄형법정주의 3. 형법의 적용범위  제2편 범죄론  1. 범죄론의 기초  2. 구성요건론  3. 위법성론 4. 책임론  5. 미수론  6. 공범론 7. 죄수론   제3편 형벌론  각론 제1편 개인적 법익에 대한 죄 1. 생명과 신체에 대한 죄 2. 자유에 대한 죄  3. 명예와 신용에 대한 죄 
4. 사생활의 평온에 대한 죄   제2편 사회적 법익에 대한 죄  1. 공공의 안전과 평온에 대한 죄  2. 공중의 건강에 대한 죄  3. 공공의 신용에 대한 죄  4. 사회의 도덕에 대한 죄  제3편 국가적 법익에 대한 죄 1. 국가의 존립과 권위에 대한 죄  2. 국가의 기능에 대한 죄 ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,26,'Designed for use in shorter introductory cellular biology courses, The Cell presents current comprehensive science in a readable and cohesive text. The sixth edition retains the overall organization, themes, and special features that made the previous edition so popular, but has been updated throughout to reflect major advances in the field.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,27,'Born into aristocracy, Churchill cut his teeth as a young army officer in British India, the Sudan, and the Second Boer War. He rose in the ranks to First Lord of the Admiralty and was a staunch opponent of the encroaching German Nazis. Churchill served as Prime Minister of the United Kingdom from 1940 to 1945 and again from 1951 to 1955. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,28,'목숨을 걸지 않으면 읽을 수 없는 책이 있을까? 겁쟁이들은 아예 책장을 열지 말라고 경고하는 소설이 있을까? 이 책의 저자는 발터 뫼르스로 되어 있지만, 그는 자신이 이 책을 쓰지 않았고 다만 번역하고 삽화를 그렸을 뿐이라고 밝힌다. 원 저작은 차모니아 출신의 공룡족인 힌데군스트 폰 미텐메츠의 장편소설이이라는 것이다. 
모두가 시인인 공룡족의 도시 린트부름에서 태어난 젊은 공룡 미텐메츠는 대부로부터 신비한 원고 한 뭉치를 유산으로 받는다. 그는 원고의 강렬함과 풍부한 감성에 매혹되어 실종된 저자를 찾아 부흐하임으로 떠난다. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,29,'교통사고를 당한 뒤 누군가에게 목 졸려 죽은 소녀를 둘러싸고 세령마을에서 일어났던 그날 밤의 사건. 서원에게 전해진 소설 『세령호』는 승환이 쓴 것으로, 7년 전 세령호의 재앙을 낱낱이 기록해 사건의 이면에 숨겨져 있던 진실을 이야기한다. 오랜 기간 수면 아래에 잠들어있던 진실은 7년의 시간을 넘어 다시 그 모습을 드러내고, 사실과 진실 사이에서 방황하며 어둠의 시간을 걸어온 존재들은 그 시간을 딛고 서서히 진실의 맨 얼굴과 조우하기 시작한다.');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,30,'Six days ago, astronaut Mark Watney became one of the first people to walk on Mars. Now, he''s sure he''ll be the first person to die there.After a dust storm nearly kills him and forces his crew to evacuate while thinking him dead, Mark finds himself stranded and completely alone with no way to even signal Earth that he’s alive—and even if he could get word out, his supplies would be gone long before a rescue could arrive. ');
INSERT INTO BKDETAIL VALUES(BIFNO_SEQ.NEXTVAL,31,'Few stories are as widely read and as universally cherished by children and adults alike as The Little Prince. Richard Howard''s translation of the beloved classic beautifully reflects Saint-Exupéry''s unique and gifted style. Howard, an acclaimed poet and one of the preeminent translators of our time, has excelled in bringing the English text as close as possible to the French, in language, style, and most important, spirit. ');

--입고(입고번호,도서번호,입고량,입고전재고,입고일)
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,1,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,2,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,3,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,4,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,5,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,6,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,7,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,8,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,9,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,10,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,11,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,12,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,13,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,14,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,15,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,16,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,17,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,18,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,19,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,20,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,21,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,22,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,23,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,24,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,25,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,26,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,27,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,28,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,29,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,30,10,0,SYSDATE);
INSERT INTO RCV VALUES(RNO_SEQ.NEXTVAL,31,10,0,SYSDATE);

--주문(주문번호,회원번호,총결제금액,주문날짜,배송주소,주문상태,결제방법,결제여부,수취인이름,수취인전화번호,주문디테일,요청사항)
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,2,26000,SYSDATE,'울산광역시 남구 대현동','배송완료','카드_삼송',1,'공문선','01054761287','지적대화를위한넓고얕은지식 외 1권','집에 베게가 없어요. 빨리 보내주세요!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,3,23750,SYSDATE,'대전광역시 유성구 진잠동','결제대기','무통장입금',0,'노형래','01036544927','The One Thing 외 0권','빠른 배송 부탁드립니다.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,4,12350,SYSDATE,'인천광역시 계양구 계산4동','배송대기','카드_궁민',1,'류명훈','01017493154','나미야 잡화점의 기적 외 0권','경비실에 맡겨주세요');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,5,179650,SYSDATE,'광주광역시 북구 석곡동','배송중','카드_궁민',1,'이지혜','01033649754','시빌 워: 프론트 라인 Book. 1 외 8권','현기증 나니까 빨리 빨리 보내주세요!!!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,3,27950,SYSDATE,'대전광역시 유성구 진잠동','배송대기','무통장입금',1,'노형래','01036544927','나는 왜 저 인간이 싫을까? 외 1권','태평양 한가운데로 보내주세요. 빨리요!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,1,7030,SYSDATE,'경상남도 진주시 성북동','결제대기','무통장입금',0,'조영민','01087519862','The Miraculous Journey of Edward Tulane 외 0권','더 이상 읽을 책이 없습니다. 빨리 배송해주세요!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,6,26600,SYSDATE,'서울특별시 송파구 삼전동','배송완료','카드_삼송',1,'오대호','01017154795','시빌 워: 프론트 라인 Book. 1 외 1권','공부하기가 싫어졌습니다. 빨리 보내주세요!!현기증난단 말야!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,2,12350,SYSDATE,'울산광역시 남구 대현동','배송중','카드_궁민',1,'공문선','01054761287','나미야 잡화집의 기적 외 0권','배송전 연락주세요.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,4,26600,SYSDATE,'인천광역시 계양구 계산4동','배송중','카드_궁민',1,'류명훈','01017493154','SPIDER-MAN/DEADPOOL (2016) #1 외 1권','빠른 배송 부탁드립니다.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,1,43050,SYSDATE,'경상남도 진주시 성북동','배송대기','카드_삼송',1,'조영민','01087519862','MARVEL UNIVERSE AVENGERS ASSEMBLE: CIVIL WAR (2016) #1 외 1권','경비실에 맡겨주세요.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,6,83400,SYSDATE,'서울특별시 송파구 삼전동','배송완료','카드_궁민',1,'오대호','01017154795','INJUSTICE: GODS AMONG US YEAR THREE VOL. 2 외 2권','공부하기가 싫어졌습니다!! 놀꺼예요!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,5,24700,SYSDATE,'광주광역시 북구 석곡동','배송중','무통장입금',1,'이지혜','01033649754','너를 놓아줄게 외 1권','한권은 선물할꺼니까 포장해주세요.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,7,52000,SYSDATE,'서울특별시 광진구 구의동','배송중','카드_삼송',1,'이주형','01097874743','지적대화를위한넓고얕은지식 외 3권','두권씩 사서 라면냄비 받침으로 쓸껍니다.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,8,52000,SYSDATE,'경기도 과천시 문원동','결제완료','무통장입금',0,'탁영진','01016257495','대한민국에서 일하는 엄마로 산다는 것 외 0권','배고픕니다. 빨리 보내주세요!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,7,63796,SYSDATE,'서울특별시 광진구 구의동','결제대기','무통장입금',0,'이주형','01097874743','Leaders Eat Last 외 1권','경비실에 맡겨주세요.');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,8,25800,SYSDATE,'경기도 과천시 문원동','배송대기','카드_궁민',1,'탁영진','01016257495','한글 : 세종이 발명한 최고의 알파벳 외 1권','매우 배고픕니다. 매우 빨리 보내주세요!!');
INSERT INTO BORDER VALUES(ONO_SEQ.NEXTVAL,6,167982,SYSDATE,'서울특별시 송파구 삼전동','결제완료','무통장입금',1,'오대호','01017154795','Justice: What’s the Right Thing to Do? 외 4권','공부하기가 싫어졌습니다!! 놀꺼예요!!');


--주문상세(상세주문번호,주문번호,도서번호,도서수량,결제금액)
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,1,5,1,13000);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,1,6,1,13000);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,2,4,1,23750);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,3,1,1,12350);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,7,1,15200);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,8,1,11400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,9,1,13300);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,10,1,13300);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,11,1,14250);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,12,1,28800);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,13,1,30600);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,14,1,41400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,4,15,1,11400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,5,16,1,11700);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,5,17,1,16250);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,6,3,1,7030);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,7,7,1,15200);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,7,8,1,11400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,8,1,1,12350);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,9,7,1,15200);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,9,8,1,11400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,10,11,1,14250);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,10,12,1,28800);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,11,13,1,30600);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,11,14,1,41400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,11,15,1,11400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,12,2,2,24700);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,13,5,2,26000);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,13,6,2,26000);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,14,18,1,12600);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,15,19,2,63796);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,16,20,1,11400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,16,21,1,14400);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,17,22,1,8950);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,17,23,1,20032);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,17,24,1,22500);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,17,25,1,34500);
INSERT INTO ORDETAIL VALUES(DNO_SEQ.NEXTVAL,17,26,1,80000);
--주문상세(상세주문번호,주문번호,도서번호,도서수량,결제금액)



--장바구니(카트번호,회원번호,도서번호,도서수량)
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,1,1,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,1,2,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,1,3,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,1,4,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,2,5,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,2,6,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,3,7,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,3,8,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,4,9,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,4,10,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,5,11,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,5,12,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,6,13,2);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,6,14,2);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,7,15,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,7,16,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,2,19,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,3,20,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,4,21,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,5,22,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,6,23,2);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,7,24,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,3,26,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,4,27,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,5,28,1);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,6,29,2);
INSERT INTO CART VALUES(CNO_SEQ.NEXTVAL,7,30,1);

--회원등급이력(회원등급번호,회원등급,회원적립률,변경일자)
INSERT INTO HMGDETAIL VALUES(1,'브론즈',0.05,DEFAULT);
INSERT INTO HMGDETAIL VALUES(2,'실버',0.1,DEFAULT);
INSERT INTO HMGDETAIL VALUES(3,'마스터',0,DEFAULT);

--회원로그인이력 테이블(회원번호,회원아이디,회원비밀번호,회원등급번호,변경일자)
INSERT INTO HMLOGIN VALUES(1,'youngmin','abcdeg1',1,DEFAULT);
INSERT INTO HMLOGIN VALUES(2,'munseon','abcdeg1',1,DEFAULT);
INSERT INTO HMLOGIN VALUES(3,'hyeongrae','abcdeg1',1,DEFAULT);
INSERT INTO HMLOGIN VALUES(4,'myounghun','abcdeg1',2,DEFAULT);
INSERT INTO HMLOGIN VALUES(5,'jeehye','abcdeg1',2,DEFAULT);
INSERT INTO HMLOGIN VALUES(6,'daeho','abcdeg1',3,DEFAULT);
INSERT INTO HMLOGIN VALUES(7,'juhyung','abcdeg1',3,DEFAULT);
INSERT INTO HMLOGIN VALUES(8,'yungjin','abcdeg1',1,DEFAULT);

--회원상세이력 테이블(회원번호,회원이름,회원주소,회원전화번호,회원마일리지,회원이메일,회원가입일,변경일자)
INSERT INTO HMDETAIL VALUES(1,'조영민','경상남도 진주시 성북동','01057862314',1000,'youngmin@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(2,'공문선','울산광역시 남구 대현동','01097584632',1000,'munseon@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(3,'노형래','대전광역시 유성구 진잠동','01042157958',1000,'hyeongrae@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(4,'류명훈','인천광역시 계양구 계산4동','01032645262',1000,'myounghun@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(5,'이지혜','광주광역시 북구 석곡동','01024748956',1000,'jeehye@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(6,'오대호','서울특별시 송파구 삼전동','01012549863',1000,'daeho@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(7,'이주형','서울특별시 광진구 구의동','01025436987',1000,'juhyung@naver.com',DEFAULT);
INSERT INTO HMDETAIL VALUES(8,'탁영진','경기도 과천시 문원동','01025975432',1000,'yungjin@naver.com',DEFAULT);

--도서카테고리이력 테이블(분류번호,분류이름,상위분류번호,변경일자)
INSERT INTO HCATE VALUES(99,'분류되지않음',NULL,DEFAULT);
INSERT INTO HCATE VALUES(1,'한국책',NULL,DEFAULT);
INSERT INTO HCATE VALUES(2,'외국책',NULL,DEFAULT);
INSERT INTO HCATE VALUES(3,'소설책',1,DEFAULT);
INSERT INTO HCATE VALUES(4,'자기개발책',1,DEFAULT);
INSERT INTO HCATE VALUES(5,'인문과학책',1,DEFAULT);
INSERT INTO HCATE VALUES(6,'전문책',1,DEFAULT);
INSERT INTO HCATE VALUES(7,'소설책',2,DEFAULT);
INSERT INTO HCATE VALUES(8,'자기개발책',2,DEFAULT);
INSERT INTO HCATE VALUES(9,'인문과학책',2,DEFAULT);
INSERT INTO HCATE VALUES(10,'전문책',2,DEFAULT);
INSERT INTO HCATE VALUES(11,'만화책',1,DEFAULT);
INSERT INTO HCATE VALUES(12,'만화책',2,DEFAULT);

--주문이력 테이블(주문번호,회원번호,총결제금액,주문날짜,배송주소,주문상태,결제방법,결제여부,수취인이름,수취인전화번호,주문디테일,요청사항,변경일자)
INSERT INTO HORDER VALUES(1,2,26000,SYSDATE,'울산광역시 남구 대현동','결제완료','카드_삼송',1,'공문선','01054761287','지적대화를위한넓고얕은지식 외 1권','집에 베게가 없어요. 빨리 보내주세요!!',DEFAULT);
INSERT INTO HORDER VALUES(3,4,12350,SYSDATE,'인천광역시 계양구 계산4동','결제완료','카드_궁민',1,'류명훈','01017493154','나미야 잡화점의 기적 외 0권','경비실에 맡겨주세요',DEFAULT);
INSERT INTO HORDER VALUES(4,5,179650,SYSDATE,'광주광역시 북구 석곡동','배송대기','카드_궁민',1,'이지혜','01033649754','시빌 워: 프론트 라인 Book. 1 외 8권','현기증 나니까 빨리 빨리 보내주세요!!!!',DEFAULT);
INSERT INTO HORDER VALUES(8,2,12350,SYSDATE,'울산광역시 남구 대현동','배송대기','카드_궁민',1,'공문선','01054761287','나미야 잡화집의 기적 외 0권','배송전 연락주세요.',DEFAULT);
INSERT INTO HORDER VALUES(11,6,83400,SYSDATE,'서울특별시 송파구 삼전동','배송중','카드_궁민',1,'오대호','01017154795','INJUSTICE: GODS AMONG US YEAR THREE VOL. 2 외 2권','공부하기가 싫어졌습니다!! 놀꺼예요!!',DEFAULT);
INSERT INTO HORDER VALUES(12,5,24700,SYSDATE,'광주광역시 북구 석곡동','배송대기','무통장입금',1,'이지혜','01033649754','너를 놓아줄게 외 1권','한권은 선물할꺼니까 포장해주세요.',DEFAULT);
INSERT INTO HORDER VALUES(13,7,52000,SYSDATE,'서울특별시 광진구 구의동','배송대기','카드_삼송',1,'이주형','01097874743','지적대화를위한넓고얕은지식 외 3권','두권씩 사서 라면냄비 받침으로 쓸껍니다.',DEFAULT);

--SET DEFINE ON

COMMIT;