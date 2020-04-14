--
-- PostgreSQL database dump
--

-- Dumped from database version 12.2 (Debian 12.2-2.pgdg100+1)
-- Dumped by pg_dump version 12.2

SET statement_timeout = 0;
SET lock_timeout = 0;
SET idle_in_transaction_session_timeout = 0;
SET client_encoding = 'UTF8';
SET standard_conforming_strings = on;
SELECT pg_catalog.set_config('search_path', '', false);
SET check_function_bodies = false;
SET xmloption = content;
SET client_min_messages = warning;
SET row_security = off;

SET default_tablespace = '';

SET default_table_access_method = heap;

--
-- Name: carrier; Type: TABLE; Schema: public; Owner: user
--

CREATE TABLE public.carrier (
    id integer NOT NULL,
    name text NOT NULL,
    type text NOT NULL,
    state text NOT NULL,
    superset text NOT NULL
);


ALTER TABLE public.carrier OWNER TO "user";

--
-- Name: carrier_id_seq; Type: SEQUENCE; Schema: public; Owner: user
--

CREATE SEQUENCE public.carrier_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.carrier_id_seq OWNER TO "user";

--
-- Name: carrier_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: user
--

ALTER SEQUENCE public.carrier_id_seq OWNED BY public.carrier.id;


--
-- Name: carrier id; Type: DEFAULT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.carrier ALTER COLUMN id SET DEFAULT nextval('public.carrier_id_seq'::regclass);


--
-- Data for Name: carrier; Type: TABLE DATA; Schema: public; Owner: user
--

COPY public.carrier (id, name, type, state, superset) FROM stdin;
897	Allstate	Auto	IL	PL
898	Allstate	Fire	IL	PL
899	Allstate	Auto	IN	PL
900	Allstate	Fire	IN	PL
901	ASI	Fire	IL	PL
902	ASI	Fire	IN	PL
903	Auto Owners	Auto	IL	PL
904	Auto Owners	Fire	IL	PL
905	Auto Owners	Auto	IN	PL
906	Auto Owners	Fire	IN	PL
907	Bristol West (High Risk Auto)	Auto	IL	PL
908	Bristol West (High Risk Auto)	Auto	IN	PL
909	Chubb	Auto	IL	PL
910	Chubb	Fire	IL	PL
911	Chubb	Auto	IN	PL
912	Chubb	Fire	IN	PL
913	Chubb	Auto	MI	PL
914	Chubb	Fire	MI	PL
915	Encompass	Auto	IL	PL
916	Encompass	Fire	IL	PL
917	Encompass	Auto	IN	PL
918	Encompass	Fire	IN	PL
919	Encompass	Auto	MI	PL
920	Encompass	Fire	MI	PL
921	Foremost	Fire	IL	PL
922	Foremost	Fire	IN	PL
923	Founders	Auto	IL	PL
924	Guard	Fire	IL	PL
925	Hippo	Fire	IL	PL
926	Hippo	Fire	IN	PL
927	Lemonade	Fire	IL	PL
928	Lemonade	Fire	IN	PL
929	Lemonade	Fire	MI	PL
930	National General	Auto	IL	PL
931	National General	Fire	IL	PL
932	National General	Auto	IN	PL
933	National General	Fire	IN	PL
934	National General	Fire	MI	PL
935	Nationwide	Auto	IL	PL
936	Nationwide	Fire	IL	PL
937	Nationwide	Auto	IN	PL
938	Nationwide	Fire	IN	PL
939	Nationwide	Auto	MI	PL
940	Nationwide	Fire	MI	PL
941	Openly	Fire	IL	PL
942	Progressive	Auto	IL	PL
943	Progressive	Fire	IL	PL
944	Progressive	Auto	IN	PL
945	Progressive	Fire	IN	PL
946	Progressive	Auto	MI	PL
947	SafeCo	Auto	IL	PL
948	SafeCo	Fire	IL	PL
949	SafeCo	Auto	IN	PL
950	SafeCo	Fire	IN	PL
951	SafeCo	Auto	MI	PL
952	SafeCo	Fire	MI	PL
953	Secura	Auto	IL	PL
954	Secura	Fire	IL	PL
955	Secura	Auto	IN	PL
956	Secura	Fire	IN	PL
957	Secura	Auto	MI	PL
958	Secura	Fire	MI	PL
959	State Auto	Auto	IL	PL
960	State Auto	Fire	IL	PL
961	State Auto	Auto	IN	PL
962	State Auto	Fire	IN	PL
963	State Auto	Auto	MI	PL
964	State Auto	Fire	MI	PL
965	Swyfft	Fire	IL	PL
966	Travelers	Auto	IL	PL
967	Travelers	Fire	IL	PL
968	Travelers	Auto	IN	PL
969	Travelers	Fire	IN	PL
970	Universal Property	Fire	IL	PL
971	Universal Property	Fire	IN	PL
972	Universal Property	Fire	MI	PL
973	American Integrity	Fire	FL	PL
974	ATIC	Fire	FL	PL
975	Avatar	Fire	FL	PL
976	Cabrillo Coastal	Fire	FL	PL
977	CatCoverage	Fire	FL	PL
978	Chubb	Auto	FL	PL
979	Chubb	Fire	FL	PL
980	Citizens - FL	Fire	FL	PL
981	Cypress	Fire	FL	PL
982	Florida Peninsula & Edison	Fire	FL	PL
983	Hearth	Fire	FL	PL
984	Mercury	Auto	FL	PL
985	Nationwide	Auto	FL	PL
986	Prepared Insurance	Fire	FL	PL
987	SafeCo	Auto	FL	PL
988	Security First Florida	Flood	FL	PL
989	Security First Florida	Fire	FL	PL
990	Southern Oak	Fire	FL	PL
991	Swyfft	Fire	FL	PL
992	Travelers	Auto	FL	PL
993	TypTap - Home/Flood	Flood	FL	PL
994	TypTap - Home/Flood	Fire	FL	PL
995	Universal Property	Fire	FL	PL
996	UPC	Fire	FL	PL
997	Velocity	Fire	FL	PL
998	Windhaven	Fire	FL	PL
999	Aon Edge (Flood)	Flood	IL	PL
1000	Aon Edge (Flood)	Flood	IN	PL
1001	Aon Edge (Flood)	Flood	MI	PL
1002	Aon Edge (Flood)	Flood	FL	PL
1003	CatCoverage	Flood	IL	PL
1004	CatCoverage	Flood	IN	PL
1005	CatCoverage	Flood	MI	PL
1006	CatCoverage	Flood	FL	PL
1007	Lexington	Flood	IL	PL
1008	Lexington	Flood	IN	PL
1009	Lexington	Flood	MI	PL
1010	Lexington	Flood	FL	PL
1011	National General	Flood	IL	PL
1012	National General	Flood	IN	PL
1013	National General	Flood	MI	PL
1014	National General	Flood	FL	PL
1015	Neptune	Flood	IL	PL
1016	Neptune	Flood	IN	PL
1017	Neptune	Flood	MI	PL
1018	Neptune	Flood	FL	PL
1019	Security First Florida	Flood	FL	PL
1020	TypTap	Flood	FL	PL
1021	National General	Flood	IL	CL
1022	National General	Flood	IN	CL
1023	National General	Flood	MI	CL
1024	National General	Flood	FL	CL
1025	Seneca	Flood	IL	CL
1026	Seneca	Flood	IN	CL
1027	Seneca	Flood	MI	CL
1028	USG	Flood	IL	CL
1029	USG	Flood	IN	CL
1030	USG	Flood	MI	CL
1031	USG	Flood	FL	CL
1032	RPS	Flood	IL	CL
1033	RPS	Flood	IN	CL
1034	RPS	Flood	MI	CL
1035	RPS	Flood	FL	CL
1036	AON EDGE	Flood	IL	CL
1037	AON EDGE	Flood	IN	CL
1038	AON EDGE	Flood	MI	CL
1039	AON EDGE	Flood	FL	CL
1040	Chubb	Auto	OH	PL
1041	Chubb	Fire	OH	PL
1042	Chubb	Auto	SC	PL
1043	Chubb	Fire	SC	PL
1044	Encompass	Auto	AZ	PL
1045	Encompass	Fire	AZ	PL
1046	Encompass	Auto	TX	PL
1047	Encompass	Fire	TX	PL
1048	Hippo	Fire	AZ	PL
1049	Hippo	Fire	CA	PL
1050	Hippo	Fire	CO	PL
1051	Hippo	Fire	GA	PL
1052	Hippo	Fire	MD	PL
1053	Hippo	Fire	SC	PL
1054	Hippo	Fire	TN	PL
1055	Hippo	Fire	TX	PL
1056	Hippo	Fire	WI	PL
1057	National General	Fire	CO	PL
1058	National General	Fire	OH	PL
1059	National General	Auto	WI	PL
1060	National General	Fire	WI	PL
1061	Nationwide	Auto	AR	PL
1062	Nationwide	Fire	AR	PL
1063	Nationwide	Auto	AZ	PL
1064	Nationwide	Fire	AZ	PL
1065	Nationwide	Auto	CA	PL
1066	Nationwide	Fire	CA	PL
1067	Nationwide	Auto	CO	PL
1068	Nationwide	Fire	CO	PL
1069	Nationwide	Auto	GA	PL
1070	Nationwide	Fire	GA	PL
1071	Nationwide	Auto	IA	PL
1072	Nationwide	Fire	IA	PL
1073	Nationwide	Auto	KY	PL
1074	Nationwide	Fire	KY	PL
1075	Nationwide	Auto	MD	PL
1076	Nationwide	Fire	MD	PL
1077	Nationwide	Auto	MO	PL
1078	Nationwide	Fire	MO	PL
1079	Nationwide	Auto	NC	PL
1080	Nationwide	Fire	NC	PL
1081	Nationwide	Auto	NV	PL
1082	Nationwide	Fire	NV	PL
1083	Nationwide	Auto	NY	PL
1084	Nationwide	Fire	NY	PL
1085	Nationwide	Auto	OH	PL
1086	Nationwide	Fire	OH	PL
1087	Nationwide	Auto	SC	PL
1088	Nationwide	Fire	SC	PL
1089	Nationwide	Auto	SD	PL
1090	Nationwide	Fire	SD	PL
1091	Nationwide	Auto	TN	PL
1092	Nationwide	Fire	TN	PL
1093	Nationwide	Auto	TX	PL
1094	Nationwide	Fire	TX	PL
1095	Nationwide	Auto	VA	PL
1096	Nationwide	Fire	VA	PL
1097	Nationwide	Auto	WI	PL
1098	Nationwide	Fire	WI	PL
1099	SafeCo	Auto	AZ	PL
1100	SafeCo	Fire	AZ	PL
1101	SafeCo	Auto	GA	PL
1102	SafeCo	Fire	GA	PL
1103	SafeCo	Auto	IA	PL
1104	SafeCo	Fire	IA	PL
1105	SafeCo	Auto	TX	PL
1106	SafeCo	Fire	TX	PL
1107	State Auto	Auto	AZ	PL
1108	State Auto	Fire	AZ	PL
1109	State Auto	Auto	CO	PL
1110	State Auto	Fire	CO	PL
1111	State Auto	Auto	GA	PL
1112	State Auto	Fire	GA	PL
1113	State Auto	Auto	IA	PL
1114	State Auto	Fire	IA	PL
1115	State Auto	Auto	KY	PL
1116	State Auto	Fire	KY	PL
1117	State Auto	Auto	MD	PL
1118	State Auto	Fire	MD	PL
1119	State Auto	Auto	NC	PL
1120	State Auto	Fire	NC	PL
1121	State Auto	Auto	OH	PL
1122	State Auto	Fire	OH	PL
1123	State Auto	Auto	SC	PL
1124	State Auto	Fire	SC	PL
1125	State Auto	Auto	TN	PL
1126	State Auto	Fire	TN	PL
1127	State Auto	Auto	TX	PL
1128	State Auto	Fire	TX	PL
1129	State Auto	Auto	WI	PL
1130	State Auto	Fire	WI	PL
1131	Swyfft	Fire	CA	PL
1132	Swyfft	Fire	NY	PL
1133	Swyfft	Fire	TX	PL
1134	Travelers	Auto	AZ	PL
1135	Travelers	Fire	AZ	PL
1136	Travelers	Auto	CO	PL
1137	Travelers	Fire	CO	PL
1138	Travelers	Auto	GA	PL
1139	Travelers	Fire	GA	PL
1140	Travelers	Auto	KY	PL
1141	Travelers	Fire	KY	PL
1142	Travelers	Auto	MD	PL
1143	Travelers	Fire	MD	PL
1144	Travelers	Auto	NC	PL
1145	Travelers	Fire	NC	PL
1146	Travelers	Auto	NY	PL
1147	Travelers	Fire	NY	PL
1148	Travelers	Auto	OH	PL
1149	Travelers	Fire	OH	PL
1150	Travelers	Auto	TN	PL
1151	Travelers	Fire	TN	PL
1152	Travelers	Auto	TX	PL
1153	Travelers	Fire	TX	PL
1154	Travelers	Auto	WI	PL
1155	Travelers	Fire	WI	PL
1156	Universal Property	Fire	MD	PL
1157	Universal Property	Fire	NY	PL
1158	Universal Property	Fire	SC	PL
1159	CIBA	Apts	AL	CL
1160	CIBA	Apts	AZ	CL
1161	CIBA	Apts	CA	CL
1162	CIBA	Apts	CO	CL
1163	CIBA	Apts	GA	CL
1164	CIBA	Apts	FL	CL
1165	CIBA	Apts	IA	CL
1166	CIBA	Apts	KS	CL
1167	CIBA	Apts	KY	CL
1168	CIBA	Apts	IL	CL
1169	CIBA	Apts	IN	CL
1170	CIBA	Apts	MD	CL
1171	CIBA	Apts	MI	CL
1172	CIBA	Apts	MO	CL
1173	CIBA	Apts	NC	CL
1174	CIBA	Apts	NV	CL
1175	CIBA	Apts	NY	CL
1176	CIBA	Apts	OH	CL
1177	CIBA	Apts	OK	CL
1178	CIBA	Apts	SD	CL
1179	CIBA	Apts	SC	CL
1180	CIBA	Apts	TN	CL
1181	CIBA	Apts	TX	CL
1182	CIBA	Apts	VA	CL
1183	CIBA	Apts	WI	CL
1184	CORE - Package	Apts	AL	CL
1185	CORE - Package	Apts	AZ	CL
1186	CORE - Package	Apts	CA	CL
1187	CORE - Package	Apts	GA	CL
1188	CORE - Package	Apts	FL	CL
1189	CORE - Package	Apts	KS	CL
1190	CORE - Package	Apts	KY	CL
1191	CORE - Package	Apts	IL	CL
1192	CORE - Package	Apts	IN	CL
1193	CORE - Package	Apts	MD	CL
1194	CORE - Package	Apts	MI	CL
1195	CORE - Package	Apts	NC	CL
1196	CORE - Package	Apts	NV	CL
1197	CORE - Package	Apts	NY	CL
1198	CORE - Package	Apts	OH	CL
1199	CORE - Package	Apts	SC	CL
1200	CORE - Package	Apts	TN	CL
1201	CORE - Package	Apts	TX	CL
1202	CORE - Package	Apts	VA	CL
1203	CORE - Package	Apts	WI	CL
1204	Greater New York	Apts	IL	CL
1205	Greater New York	Apts	IN	CL
1206	Greater New York	Apts	MD	CL
1207	Greater New York	Apts	MI	CL
1208	Greater New York	Apts	NY	CL
1209	Greater New York	Apts	OH	CL
1210	Greater New York	Apts	VA	CL
1211	Greater New York	Apts	WI	CL
1212	Guard	Apts	AL	CL
1213	Guard	Apts	AZ	CL
1214	Guard	Apts	CA	CL
1215	Guard	Apts	CO	CL
1216	Guard	Apts	GA	CL
1217	Guard	Apts	FL	CL
1218	Guard	Apts	IA	CL
1219	Guard	Apts	KS	CL
1220	Guard	Apts	KY	CL
1221	Guard	Apts	IL	CL
1222	Guard	Apts	IN	CL
1223	Guard	Apts	MD	CL
1224	Guard	Apts	MI	CL
1225	Guard	Apts	MO	CL
1226	Guard	Apts	NC	CL
1227	Guard	Apts	NV	CL
1228	Guard	Apts	NY	CL
1229	Guard	Apts	OH	CL
1230	Guard	Apts	OK	CL
1231	Guard	Apts	SD	CL
1232	Guard	Apts	SC	CL
1233	Guard	Apts	TN	CL
1234	Guard	Apts	TX	CL
1235	Guard	Apts	VA	CL
1236	Guard	Apts	WI	CL
1237	Liberty Mutual	Apts	AL	CL
1238	Liberty Mutual	Apts	AZ	CL
1239	Liberty Mutual	Apts	CA	CL
1240	Liberty Mutual	Apts	CO	CL
1241	Liberty Mutual	Apts	GA	CL
1242	Liberty Mutual	Apts	IA	CL
1243	Liberty Mutual	Apts	KS	CL
1244	Liberty Mutual	Apts	KY	CL
1245	Liberty Mutual	Apts	IL	CL
1246	Liberty Mutual	Apts	IN	CL
1247	Liberty Mutual	Apts	MD	CL
1248	Liberty Mutual	Apts	MI	CL
1249	Liberty Mutual	Apts	MO	CL
1250	Liberty Mutual	Apts	NC	CL
1251	Liberty Mutual	Apts	NV	CL
1252	Liberty Mutual	Apts	NY	CL
1253	Liberty Mutual	Apts	OH	CL
1254	Liberty Mutual	Apts	OK	CL
1255	Liberty Mutual	Apts	SD	CL
1256	Liberty Mutual	Apts	SC	CL
1257	Liberty Mutual	Apts	TN	CL
1258	Liberty Mutual	Apts	TX	CL
1259	Liberty Mutual	Apts	VA	CL
1260	Liberty Mutual	Apts	WI	CL
1261	Nationwide	Apts	AZ	CL
1262	Nationwide	Apts	CO	CL
1263	Nationwide	Apts	FL	CL
1264	Nationwide	Apts	IA	CL
1265	Nationwide	Apts	KS	CL
1266	Nationwide	Apts	IL	CL
1267	Nationwide	Apts	IN	CL
1268	Nationwide	Apts	MD	CL
1269	Nationwide	Apts	MO	CL
1270	Nationwide	Apts	NY	CL
1271	Nationwide	Apts	OH	CL
1272	Nationwide	Apts	SD	CL
1273	Nationwide	Apts	VA	CL
1274	Seneca	Apts	AL	CL
1275	Seneca	Apts	AZ	CL
1276	Seneca	Apts	CA	CL
1277	Seneca	Apts	CO	CL
1278	Seneca	Apts	GA	CL
1279	Seneca	Apts	IA	CL
1280	Seneca	Apts	KS	CL
1281	Seneca	Apts	KY	CL
1282	Seneca	Apts	MD	CL
1283	Seneca	Apts	MO	CL
1284	Seneca	Apts	NC	CL
1285	Seneca	Apts	NV	CL
1286	Seneca	Apts	NY	CL
1287	Seneca	Apts	OH	CL
1288	Seneca	Apts	OK	CL
1289	Seneca	Apts	SD	CL
1290	Seneca	Apts	SC	CL
1291	Seneca	Apts	TN	CL
1292	Seneca	Apts	TX	CL
1293	Seneca	Apts	VA	CL
1294	Seneca	Apts	WI	CL
1295	State Auto	Apts	AL	CL
1296	State Auto	Apts	AZ	CL
1297	State Auto	Apts	CO	CL
1298	State Auto	Apts	GA	CL
1299	State Auto	Apts	IA	CL
1300	State Auto	Apts	KS	CL
1301	State Auto	Apts	KY	CL
1302	State Auto	Apts	IL	CL
1303	State Auto	Apts	IN	CL
1304	State Auto	Apts	MD	CL
1305	State Auto	Apts	MI	CL
1306	State Auto	Apts	MO	CL
1307	State Auto	Apts	NC	CL
1308	State Auto	Apts	NV	CL
1309	State Auto	Apts	NY	CL
1310	State Auto	Apts	OH	CL
1311	State Auto	Apts	SD	CL
1312	State Auto	Apts	SC	CL
1313	State Auto	Apts	TN	CL
1314	State Auto	Apts	VA	CL
1315	State Auto	Apts	WI	CL
1316	Strata	Apts	AL	CL
1317	Strata	Apts	AZ	CL
1318	Strata	Apts	CA	CL
1319	Strata	Apts	CO	CL
1320	Strata	Apts	GA	CL
1321	Strata	Apts	FL	CL
1322	Strata	Apts	IA	CL
1323	Strata	Apts	KS	CL
1324	Strata	Apts	KY	CL
1325	Strata	Apts	IL	CL
1326	Strata	Apts	IN	CL
1327	Strata	Apts	MD	CL
1328	Strata	Apts	MI	CL
1329	Strata	Apts	MO	CL
1330	Strata	Apts	NC	CL
1331	Strata	Apts	NV	CL
1332	Strata	Apts	NY	CL
1333	Strata	Apts	OH	CL
1334	Strata	Apts	OK	CL
1335	Strata	Apts	SD	CL
1336	Strata	Apts	SC	CL
1337	Strata	Apts	TN	CL
1338	Strata	Apts	TX	CL
1339	Strata	Apts	VA	CL
1340	Strata	Apts	WI	CL
1341	Swyfft	Apts	FL	CL
1342	Swyfft	Apts	IL	CL
1343	Arcana	SFR	FL	CL
1344	Carillo Coastal	SFR	FL	CL
1345	Nationwide	FourPlus	FL	CL
1346	Seneca	SFR	FL	CL
1347	Seneca	FourPlus	FL	CL
1348	Swyfft	FourPlus	FL	CL
1349	Arcana	SFR	TX	CL
1350	Guard	FourPlus	TX	CL
1351	Strata	FourPlus	TX	CL
1352	Arcana	SFR	OK	CL
1353	Guard	FourPlus	OK	CL
1354	Strata	FourPlus	OK	CL
1355	Arcana	SFR	TN	CL
1356	Guard	FourPlus	TN	CL
1357	Seneca	SFR	TN	CL
1358	Seneca	FourPlus	TN	CL
1359	State Auto	SFR	TN	CL
1360	State Auto	FourPlus	TN	CL
1361	Strata	FourPlus	TN	CL
\.


--
-- Name: carrier_id_seq; Type: SEQUENCE SET; Schema: public; Owner: user
--

SELECT pg_catalog.setval('public.carrier_id_seq', 1361, true);


--
-- Name: carrier carrier_pkey; Type: CONSTRAINT; Schema: public; Owner: user
--

ALTER TABLE ONLY public.carrier
    ADD CONSTRAINT carrier_pkey PRIMARY KEY (id);


--
-- PostgreSQL database dump complete
--

