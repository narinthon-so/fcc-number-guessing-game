--
-- PostgreSQL database dump
--

-- Dumped from database version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)
-- Dumped by pg_dump version 12.9 (Ubuntu 12.9-2.pgdg20.04+1)

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

DROP DATABASE number_guess;
--
-- Name: number_guess; Type: DATABASE; Schema: -; Owner: freecodecamp
--

CREATE DATABASE number_guess WITH TEMPLATE = template0 ENCODING = 'UTF8' LC_COLLATE = 'C.UTF-8' LC_CTYPE = 'C.UTF-8';


ALTER DATABASE number_guess OWNER TO freecodecamp;

\connect number_guess

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
-- Name: game_history; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.game_history (
    game_id integer NOT NULL,
    user_id integer NOT NULL,
    secret_number integer NOT NULL,
    number_of_guesses integer NOT NULL
);


ALTER TABLE public.game_history OWNER TO freecodecamp;

--
-- Name: game_history_game_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.game_history_game_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.game_history_game_id_seq OWNER TO freecodecamp;

--
-- Name: game_history_game_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.game_history_game_id_seq OWNED BY public.game_history.game_id;


--
-- Name: users; Type: TABLE; Schema: public; Owner: freecodecamp
--

CREATE TABLE public.users (
    user_id integer NOT NULL,
    username character varying(22) NOT NULL
);


ALTER TABLE public.users OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE; Schema: public; Owner: freecodecamp
--

CREATE SEQUENCE public.users_user_id_seq
    AS integer
    START WITH 1
    INCREMENT BY 1
    NO MINVALUE
    NO MAXVALUE
    CACHE 1;


ALTER TABLE public.users_user_id_seq OWNER TO freecodecamp;

--
-- Name: users_user_id_seq; Type: SEQUENCE OWNED BY; Schema: public; Owner: freecodecamp
--

ALTER SEQUENCE public.users_user_id_seq OWNED BY public.users.user_id;


--
-- Name: game_history game_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_history ALTER COLUMN game_id SET DEFAULT nextval('public.game_history_game_id_seq'::regclass);


--
-- Name: users user_id; Type: DEFAULT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users ALTER COLUMN user_id SET DEFAULT nextval('public.users_user_id_seq'::regclass);


--
-- Data for Name: game_history; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.game_history VALUES (249, 120, 206, 206);
INSERT INTO public.game_history VALUES (250, 120, 530, 530);
INSERT INTO public.game_history VALUES (251, 121, 747, 747);
INSERT INTO public.game_history VALUES (252, 121, 283, 283);
INSERT INTO public.game_history VALUES (253, 120, 480, 482);
INSERT INTO public.game_history VALUES (254, 120, 259, 259);
INSERT INTO public.game_history VALUES (255, 120, 671, 671);
INSERT INTO public.game_history VALUES (256, 122, 655, 655);
INSERT INTO public.game_history VALUES (257, 122, 821, 821);
INSERT INTO public.game_history VALUES (258, 123, 744, 744);
INSERT INTO public.game_history VALUES (259, 123, 15, 15);
INSERT INTO public.game_history VALUES (260, 122, 905, 907);
INSERT INTO public.game_history VALUES (261, 122, 828, 828);
INSERT INTO public.game_history VALUES (262, 122, 957, 957);
INSERT INTO public.game_history VALUES (263, 124, 238, 238);
INSERT INTO public.game_history VALUES (264, 124, 624, 624);
INSERT INTO public.game_history VALUES (265, 125, 150, 150);
INSERT INTO public.game_history VALUES (266, 125, 746, 746);
INSERT INTO public.game_history VALUES (267, 124, 693, 695);
INSERT INTO public.game_history VALUES (268, 124, 637, 637);
INSERT INTO public.game_history VALUES (269, 124, 140, 140);
INSERT INTO public.game_history VALUES (270, 126, 887, 887);
INSERT INTO public.game_history VALUES (271, 126, 178, 178);
INSERT INTO public.game_history VALUES (272, 127, 30, 30);
INSERT INTO public.game_history VALUES (273, 127, 293, 293);
INSERT INTO public.game_history VALUES (274, 126, 602, 604);
INSERT INTO public.game_history VALUES (275, 126, 354, 354);
INSERT INTO public.game_history VALUES (276, 126, 166, 166);
INSERT INTO public.game_history VALUES (277, 134, 451, 451);
INSERT INTO public.game_history VALUES (278, 134, 652, 652);
INSERT INTO public.game_history VALUES (279, 135, 43, 43);
INSERT INTO public.game_history VALUES (280, 135, 824, 824);
INSERT INTO public.game_history VALUES (281, 134, 950, 952);
INSERT INTO public.game_history VALUES (282, 134, 390, 390);
INSERT INTO public.game_history VALUES (283, 134, 24, 24);
INSERT INTO public.game_history VALUES (284, 136, 962, 962);
INSERT INTO public.game_history VALUES (285, 136, 551, 551);
INSERT INTO public.game_history VALUES (286, 137, 571, 571);
INSERT INTO public.game_history VALUES (287, 137, 281, 281);
INSERT INTO public.game_history VALUES (288, 136, 202, 204);
INSERT INTO public.game_history VALUES (289, 136, 815, 815);
INSERT INTO public.game_history VALUES (290, 136, 295, 295);
INSERT INTO public.game_history VALUES (317, 169, 50, 50);
INSERT INTO public.game_history VALUES (318, 169, 197, 197);
INSERT INTO public.game_history VALUES (319, 170, 662, 662);
INSERT INTO public.game_history VALUES (320, 170, 460, 460);
INSERT INTO public.game_history VALUES (321, 169, 191, 193);
INSERT INTO public.game_history VALUES (322, 169, 305, 305);
INSERT INTO public.game_history VALUES (323, 169, 87, 87);
INSERT INTO public.game_history VALUES (324, 171, 675, 675);
INSERT INTO public.game_history VALUES (325, 171, 118, 118);
INSERT INTO public.game_history VALUES (326, 172, 134, 134);
INSERT INTO public.game_history VALUES (327, 172, 731, 731);
INSERT INTO public.game_history VALUES (328, 171, 371, 373);
INSERT INTO public.game_history VALUES (329, 171, 985, 985);
INSERT INTO public.game_history VALUES (330, 171, 562, 562);
INSERT INTO public.game_history VALUES (331, 15, 612, 18);
INSERT INTO public.game_history VALUES (332, 173, 943, 943);
INSERT INTO public.game_history VALUES (333, 173, 574, 574);
INSERT INTO public.game_history VALUES (334, 174, 888, 888);
INSERT INTO public.game_history VALUES (335, 174, 611, 611);
INSERT INTO public.game_history VALUES (336, 173, 692, 694);
INSERT INTO public.game_history VALUES (337, 173, 209, 209);
INSERT INTO public.game_history VALUES (338, 173, 150, 150);
INSERT INTO public.game_history VALUES (339, 176, 129, 129);
INSERT INTO public.game_history VALUES (340, 176, 76, 76);
INSERT INTO public.game_history VALUES (341, 177, 632, 632);
INSERT INTO public.game_history VALUES (342, 177, 508, 508);
INSERT INTO public.game_history VALUES (343, 176, 310, 312);
INSERT INTO public.game_history VALUES (344, 176, 732, 732);
INSERT INTO public.game_history VALUES (345, 176, 233, 233);
INSERT INTO public.game_history VALUES (346, 178, 30, 30);
INSERT INTO public.game_history VALUES (347, 178, 654, 654);
INSERT INTO public.game_history VALUES (348, 179, 523, 523);
INSERT INTO public.game_history VALUES (349, 179, 522, 522);
INSERT INTO public.game_history VALUES (350, 178, 270, 272);
INSERT INTO public.game_history VALUES (351, 178, 334, 334);
INSERT INTO public.game_history VALUES (352, 178, 511, 511);
INSERT INTO public.game_history VALUES (353, 180, 162, 162);
INSERT INTO public.game_history VALUES (354, 180, 888, 888);
INSERT INTO public.game_history VALUES (355, 181, 861, 861);
INSERT INTO public.game_history VALUES (356, 181, 256, 256);
INSERT INTO public.game_history VALUES (357, 180, 680, 682);
INSERT INTO public.game_history VALUES (358, 180, 256, 256);
INSERT INTO public.game_history VALUES (359, 180, 862, 862);
INSERT INTO public.game_history VALUES (360, 182, 383, 383);
INSERT INTO public.game_history VALUES (361, 182, 683, 683);
INSERT INTO public.game_history VALUES (362, 183, 113, 113);
INSERT INTO public.game_history VALUES (363, 183, 233, 233);
INSERT INTO public.game_history VALUES (364, 182, 926, 928);
INSERT INTO public.game_history VALUES (365, 182, 790, 790);
INSERT INTO public.game_history VALUES (366, 182, 318, 318);
INSERT INTO public.game_history VALUES (367, 184, 182, 182);
INSERT INTO public.game_history VALUES (368, 184, 619, 619);
INSERT INTO public.game_history VALUES (369, 185, 682, 682);
INSERT INTO public.game_history VALUES (370, 185, 546, 546);
INSERT INTO public.game_history VALUES (371, 184, 910, 912);
INSERT INTO public.game_history VALUES (372, 184, 580, 580);
INSERT INTO public.game_history VALUES (373, 184, 393, 393);
INSERT INTO public.game_history VALUES (374, 186, 513, 513);
INSERT INTO public.game_history VALUES (375, 186, 350, 350);
INSERT INTO public.game_history VALUES (376, 187, 616, 616);
INSERT INTO public.game_history VALUES (377, 187, 30, 30);
INSERT INTO public.game_history VALUES (378, 186, 304, 306);
INSERT INTO public.game_history VALUES (379, 186, 243, 243);
INSERT INTO public.game_history VALUES (380, 186, 934, 934);
INSERT INTO public.game_history VALUES (381, 188, 303, 303);
INSERT INTO public.game_history VALUES (382, 188, 125, 125);
INSERT INTO public.game_history VALUES (383, 189, 213, 213);
INSERT INTO public.game_history VALUES (384, 188, 65, 67);
INSERT INTO public.game_history VALUES (385, 188, 743, 743);
INSERT INTO public.game_history VALUES (386, 188, 59, 59);
INSERT INTO public.game_history VALUES (387, 190, 685, 685);
INSERT INTO public.game_history VALUES (388, 190, 509, 509);
INSERT INTO public.game_history VALUES (389, 191, 595, 595);
INSERT INTO public.game_history VALUES (390, 191, 920, 920);
INSERT INTO public.game_history VALUES (391, 190, 570, 572);
INSERT INTO public.game_history VALUES (392, 190, 35, 35);
INSERT INTO public.game_history VALUES (393, 190, 554, 554);
INSERT INTO public.game_history VALUES (394, 192, 322, 322);
INSERT INTO public.game_history VALUES (395, 192, 212, 212);
INSERT INTO public.game_history VALUES (396, 193, 867, 867);
INSERT INTO public.game_history VALUES (397, 193, 482, 482);
INSERT INTO public.game_history VALUES (398, 192, 832, 834);
INSERT INTO public.game_history VALUES (399, 192, 355, 355);
INSERT INTO public.game_history VALUES (400, 192, 184, 184);
INSERT INTO public.game_history VALUES (401, 194, 70, 71);
INSERT INTO public.game_history VALUES (402, 194, 9, 10);
INSERT INTO public.game_history VALUES (403, 195, 108, 109);
INSERT INTO public.game_history VALUES (404, 195, 738, 739);
INSERT INTO public.game_history VALUES (405, 194, 277, 280);
INSERT INTO public.game_history VALUES (406, 194, 244, 246);
INSERT INTO public.game_history VALUES (407, 194, 446, 447);
INSERT INTO public.game_history VALUES (408, 196, 847, 847);
INSERT INTO public.game_history VALUES (409, 196, 466, 466);
INSERT INTO public.game_history VALUES (410, 197, 81, 81);
INSERT INTO public.game_history VALUES (411, 197, 797, 797);
INSERT INTO public.game_history VALUES (412, 196, 116, 118);
INSERT INTO public.game_history VALUES (413, 196, 680, 680);
INSERT INTO public.game_history VALUES (414, 196, 819, 819);
INSERT INTO public.game_history VALUES (415, 198, 532, 532);
INSERT INTO public.game_history VALUES (416, 198, 343, 343);
INSERT INTO public.game_history VALUES (417, 199, 617, 617);
INSERT INTO public.game_history VALUES (418, 199, 341, 341);
INSERT INTO public.game_history VALUES (419, 198, 424, 426);
INSERT INTO public.game_history VALUES (420, 198, 756, 756);
INSERT INTO public.game_history VALUES (421, 198, 484, 484);
INSERT INTO public.game_history VALUES (422, 200, 324, 324);
INSERT INTO public.game_history VALUES (423, 201, 154, 154);
INSERT INTO public.game_history VALUES (424, 200, 207, 209);
INSERT INTO public.game_history VALUES (425, 200, 513, 513);
INSERT INTO public.game_history VALUES (426, 200, 609, 609);
INSERT INTO public.game_history VALUES (427, 230, 417, 417);
INSERT INTO public.game_history VALUES (428, 232, 588, 588);
INSERT INTO public.game_history VALUES (429, 237, 485, 485);
INSERT INTO public.game_history VALUES (430, 239, 707, 707);
INSERT INTO public.game_history VALUES (431, 337, 473, 474);
INSERT INTO public.game_history VALUES (432, 337, 94, 95);
INSERT INTO public.game_history VALUES (433, 338, 973, 974);
INSERT INTO public.game_history VALUES (434, 338, 511, 512);
INSERT INTO public.game_history VALUES (435, 337, 641, 644);
INSERT INTO public.game_history VALUES (436, 337, 57, 59);
INSERT INTO public.game_history VALUES (437, 337, 171, 172);
INSERT INTO public.game_history VALUES (438, 343, 615, 616);
INSERT INTO public.game_history VALUES (439, 343, 254, 255);
INSERT INTO public.game_history VALUES (440, 344, 308, 309);
INSERT INTO public.game_history VALUES (441, 344, 855, 856);
INSERT INTO public.game_history VALUES (442, 343, 840, 843);
INSERT INTO public.game_history VALUES (443, 343, 656, 658);
INSERT INTO public.game_history VALUES (444, 343, 492, 493);
INSERT INTO public.game_history VALUES (445, 345, 522, 523);
INSERT INTO public.game_history VALUES (446, 345, 970, 971);
INSERT INTO public.game_history VALUES (447, 346, 602, 603);
INSERT INTO public.game_history VALUES (448, 346, 292, 293);
INSERT INTO public.game_history VALUES (449, 345, 59, 62);
INSERT INTO public.game_history VALUES (450, 345, 128, 130);
INSERT INTO public.game_history VALUES (451, 345, 178, 179);
INSERT INTO public.game_history VALUES (452, 347, 546, 547);
INSERT INTO public.game_history VALUES (453, 347, 255, 256);
INSERT INTO public.game_history VALUES (454, 348, 402, 403);
INSERT INTO public.game_history VALUES (455, 348, 418, 419);
INSERT INTO public.game_history VALUES (456, 347, 168, 171);
INSERT INTO public.game_history VALUES (457, 347, 476, 478);
INSERT INTO public.game_history VALUES (458, 347, 909, 910);
INSERT INTO public.game_history VALUES (459, 349, 515, 516);
INSERT INTO public.game_history VALUES (460, 349, 985, 986);
INSERT INTO public.game_history VALUES (461, 350, 66, 67);
INSERT INTO public.game_history VALUES (462, 350, 180, 181);
INSERT INTO public.game_history VALUES (463, 349, 549, 552);
INSERT INTO public.game_history VALUES (464, 349, 885, 887);
INSERT INTO public.game_history VALUES (465, 349, 587, 588);
INSERT INTO public.game_history VALUES (466, 351, 634, 635);
INSERT INTO public.game_history VALUES (467, 351, 923, 924);
INSERT INTO public.game_history VALUES (468, 352, 100, 101);
INSERT INTO public.game_history VALUES (469, 352, 596, 597);
INSERT INTO public.game_history VALUES (470, 351, 959, 962);
INSERT INTO public.game_history VALUES (471, 351, 927, 929);
INSERT INTO public.game_history VALUES (472, 351, 852, 853);


--
-- Data for Name: users; Type: TABLE DATA; Schema: public; Owner: freecodecamp
--

INSERT INTO public.users VALUES (1, 'ns');
INSERT INTO public.users VALUES (2, 'nx');
INSERT INTO public.users VALUES (3, 'user_1686649337409');
INSERT INTO public.users VALUES (4, 'user_1686649337408');
INSERT INTO public.users VALUES (5, 'user_1686649539758');
INSERT INTO public.users VALUES (6, 'user_1686649539757');
INSERT INTO public.users VALUES (7, 'user_1686650018732');
INSERT INTO public.users VALUES (8, 'user_1686650018731');
INSERT INTO public.users VALUES (9, 'user_1686650619519');
INSERT INTO public.users VALUES (10, 'user_1686650619518');
INSERT INTO public.users VALUES (11, 'user_1686651674216');
INSERT INTO public.users VALUES (12, 'user_1686651674215');
INSERT INTO public.users VALUES (13, 'user_1686651762019');
INSERT INTO public.users VALUES (14, 'user_1686651762018');
INSERT INTO public.users VALUES (15, 'ms');
INSERT INTO public.users VALUES (16, 'user_1686652041308');
INSERT INTO public.users VALUES (17, 'user_1686652041307');
INSERT INTO public.users VALUES (18, 'user_1686713650262');
INSERT INTO public.users VALUES (19, 'user_1686713650261');
INSERT INTO public.users VALUES (20, 'user_1686713938060');
INSERT INTO public.users VALUES (21, 'user_1686713938059');
INSERT INTO public.users VALUES (22, 'user_1686714167479');
INSERT INTO public.users VALUES (23, 'user_1686714167478');
INSERT INTO public.users VALUES (24, 'user_1686714440764');
INSERT INTO public.users VALUES (25, 'user_1686714440763');
INSERT INTO public.users VALUES (26, 'user_1686714966050');
INSERT INTO public.users VALUES (27, 'user_1686714966049');
INSERT INTO public.users VALUES (28, 'user_1686715086167');
INSERT INTO public.users VALUES (29, 'user_1686715086166');
INSERT INTO public.users VALUES (30, 'user_1686715267285');
INSERT INTO public.users VALUES (31, 'user_1686715267284');
INSERT INTO public.users VALUES (32, 'user_1686716930044');
INSERT INTO public.users VALUES (33, 'user_1686716930043');
INSERT INTO public.users VALUES (34, 'user_1686716939818');
INSERT INTO public.users VALUES (35, 'user_1686716939817');
INSERT INTO public.users VALUES (36, 'user_1686716987342');
INSERT INTO public.users VALUES (37, 'user_1686716987341');
INSERT INTO public.users VALUES (38, 'user_1686717065057');
INSERT INTO public.users VALUES (39, 'user_1686717065056');
INSERT INTO public.users VALUES (40, 'user_1686717098094');
INSERT INTO public.users VALUES (41, 'user_1686717098093');
INSERT INTO public.users VALUES (42, 'user_1686717146545');
INSERT INTO public.users VALUES (43, 'user_1686717146544');
INSERT INTO public.users VALUES (44, 'user_1686717177636');
INSERT INTO public.users VALUES (45, 'user_1686717177635');
INSERT INTO public.users VALUES (46, 'mm');
INSERT INTO public.users VALUES (47, 'user_1686717215556');
INSERT INTO public.users VALUES (48, 'user_1686717215555');
INSERT INTO public.users VALUES (49, 'user_1686717328054');
INSERT INTO public.users VALUES (50, 'user_1686717328053');
INSERT INTO public.users VALUES (51, 'user_1686717343141');
INSERT INTO public.users VALUES (52, 'user_1686717343140');
INSERT INTO public.users VALUES (53, 'user_1686717479315');
INSERT INTO public.users VALUES (54, 'user_1686717479314');
INSERT INTO public.users VALUES (55, 'user_1686717489811');
INSERT INTO public.users VALUES (56, 'user_1686717489810');
INSERT INTO public.users VALUES (57, 'user_1686717516014');
INSERT INTO public.users VALUES (58, 'user_1686717516013');
INSERT INTO public.users VALUES (59, 'user_1686717588537');
INSERT INTO public.users VALUES (60, 'user_1686717588536');
INSERT INTO public.users VALUES (86, 'user_1686725807710');
INSERT INTO public.users VALUES (87, 'user_1686725807709');
INSERT INTO public.users VALUES (88, 'user_1686725856297');
INSERT INTO public.users VALUES (89, 'user_1686725856296');
INSERT INTO public.users VALUES (90, 'user_1686726027649');
INSERT INTO public.users VALUES (91, 'user_1686726027648');
INSERT INTO public.users VALUES (92, 'user_1686726082661');
INSERT INTO public.users VALUES (93, 'user_1686726082660');
INSERT INTO public.users VALUES (94, 'user_1686726096961');
INSERT INTO public.users VALUES (95, 'user_1686726096960');
INSERT INTO public.users VALUES (96, 'user_1686726358077');
INSERT INTO public.users VALUES (97, 'user_1686726358076');
INSERT INTO public.users VALUES (98, 'user_1686726370916');
INSERT INTO public.users VALUES (99, 'user_1686726370915');
INSERT INTO public.users VALUES (100, 'user_1686726383890');
INSERT INTO public.users VALUES (101, 'user_1686726383889');
INSERT INTO public.users VALUES (102, 'user_1686726394212');
INSERT INTO public.users VALUES (103, 'user_1686726394211');
INSERT INTO public.users VALUES (104, 'user_1686726417607');
INSERT INTO public.users VALUES (105, 'user_1686726417606');
INSERT INTO public.users VALUES (106, 'user_1686726768495');
INSERT INTO public.users VALUES (107, 'user_1686726768494');
INSERT INTO public.users VALUES (108, 'user_1686726822847');
INSERT INTO public.users VALUES (109, 'user_1686726822846');
INSERT INTO public.users VALUES (110, 'user_1686726985092');
INSERT INTO public.users VALUES (111, 'user_1686726985091');
INSERT INTO public.users VALUES (112, 'user_1686727094786');
INSERT INTO public.users VALUES (113, 'user_1686727094785');
INSERT INTO public.users VALUES (114, 'user_1686727163558');
INSERT INTO public.users VALUES (115, 'user_1686727163557');
INSERT INTO public.users VALUES (116, 'user_1686727193685');
INSERT INTO public.users VALUES (117, 'user_1686727193684');
INSERT INTO public.users VALUES (118, 'user_1686727298198');
INSERT INTO public.users VALUES (119, 'user_1686727298197');
INSERT INTO public.users VALUES (120, 'user_1686727557060');
INSERT INTO public.users VALUES (121, 'user_1686727557059');
INSERT INTO public.users VALUES (122, 'user_1686727563445');
INSERT INTO public.users VALUES (123, 'user_1686727563444');
INSERT INTO public.users VALUES (124, 'user_1686727730967');
INSERT INTO public.users VALUES (125, 'user_1686727730966');
INSERT INTO public.users VALUES (126, 'user_1686727798477');
INSERT INTO public.users VALUES (127, 'user_1686727798476');
INSERT INTO public.users VALUES (128, 'user_1686727868034');
INSERT INTO public.users VALUES (129, 'user_1686727868033');
INSERT INTO public.users VALUES (130, 'user_1686728072354');
INSERT INTO public.users VALUES (131, 'user_1686728072353');
INSERT INTO public.users VALUES (132, 'user_1686728086763');
INSERT INTO public.users VALUES (133, 'user_1686728086762');
INSERT INTO public.users VALUES (134, 'user_1686728123180');
INSERT INTO public.users VALUES (135, 'user_1686728123179');
INSERT INTO public.users VALUES (136, 'user_1686735979658');
INSERT INTO public.users VALUES (137, 'user_1686735979657');
INSERT INTO public.users VALUES (169, 'user_1686736810734');
INSERT INTO public.users VALUES (170, 'user_1686736810733');
INSERT INTO public.users VALUES (171, 'user_1686736847291');
INSERT INTO public.users VALUES (172, 'user_1686736847290');
INSERT INTO public.users VALUES (173, 'user_1686737152834');
INSERT INTO public.users VALUES (174, 'user_1686737152833');
INSERT INTO public.users VALUES (175, 'hh');
INSERT INTO public.users VALUES (176, 'user_1686744791074');
INSERT INTO public.users VALUES (177, 'user_1686744791073');
INSERT INTO public.users VALUES (178, 'user_1686746100346');
INSERT INTO public.users VALUES (179, 'user_1686746100345');
INSERT INTO public.users VALUES (180, 'user_1686796205779');
INSERT INTO public.users VALUES (181, 'user_1686796205778');
INSERT INTO public.users VALUES (182, 'user_1686796319793');
INSERT INTO public.users VALUES (183, 'user_1686796319792');
INSERT INTO public.users VALUES (184, 'user_1686796413040');
INSERT INTO public.users VALUES (185, 'user_1686796413039');
INSERT INTO public.users VALUES (186, 'user_1686796630461');
INSERT INTO public.users VALUES (187, 'user_1686796630460');
INSERT INTO public.users VALUES (188, 'user_1686796644360');
INSERT INTO public.users VALUES (189, 'user_1686796644359');
INSERT INTO public.users VALUES (190, 'user_1686796654981');
INSERT INTO public.users VALUES (191, 'user_1686796654980');
INSERT INTO public.users VALUES (192, 'user_1686796669492');
INSERT INTO public.users VALUES (193, 'user_1686796669491');
INSERT INTO public.users VALUES (194, 'user_1686797221295');
INSERT INTO public.users VALUES (195, 'user_1686797221294');
INSERT INTO public.users VALUES (196, 'user_1686797313283');
INSERT INTO public.users VALUES (197, 'user_1686797313282');
INSERT INTO public.users VALUES (198, 'user_1686797318242');
INSERT INTO public.users VALUES (199, 'user_1686797318241');
INSERT INTO public.users VALUES (200, 'user_1686797399933');
INSERT INTO public.users VALUES (201, 'user_1686797399932');
INSERT INTO public.users VALUES (202, 'user_1686797935533');
INSERT INTO public.users VALUES (279, 'user_1686798435852');
INSERT INTO public.users VALUES (204, 'user_1686797935532');
INSERT INTO public.users VALUES (281, 'user_1686798435851');
INSERT INTO public.users VALUES (209, 'user_1686797978942');
INSERT INTO public.users VALUES (211, 'user_1686797978941');
INSERT INTO public.users VALUES (293, 'user_1686798605957');
INSERT INTO public.users VALUES (295, 'user_1686798605956');
INSERT INTO public.users VALUES (216, 'user_1686798124779');
INSERT INTO public.users VALUES (218, 'user_1686798124778');
INSERT INTO public.users VALUES (286, 'user_1686798440751');
INSERT INTO public.users VALUES (288, 'user_1686798440750');
INSERT INTO public.users VALUES (223, 'user_1686798131656');
INSERT INTO public.users VALUES (225, 'user_1686798131655');
INSERT INTO public.users VALUES (230, 'user_1686798204918');
INSERT INTO public.users VALUES (232, 'user_1686798204917');
INSERT INTO public.users VALUES (300, 'user_1686798610796');
INSERT INTO public.users VALUES (302, 'user_1686798610795');
INSERT INTO public.users VALUES (237, 'user_1686798210489');
INSERT INTO public.users VALUES (239, 'user_1686798210488');
INSERT INTO public.users VALUES (307, 'user_1686798705033');
INSERT INTO public.users VALUES (244, 'user_1686798218113');
INSERT INTO public.users VALUES (309, 'user_1686798705032');
INSERT INTO public.users VALUES (246, 'user_1686798218112');
INSERT INTO public.users VALUES (251, 'user_1686798240647');
INSERT INTO public.users VALUES (314, 'user_1686798725083');
INSERT INTO public.users VALUES (253, 'user_1686798240646');
INSERT INTO public.users VALUES (316, 'user_1686798725082');
INSERT INTO public.users VALUES (258, 'user_1686798254441');
INSERT INTO public.users VALUES (260, 'user_1686798254440');
INSERT INTO public.users VALUES (321, 'user_1686798729845');
INSERT INTO public.users VALUES (323, 'user_1686798729844');
INSERT INTO public.users VALUES (265, 'user_1686798262235');
INSERT INTO public.users VALUES (267, 'user_1686798262234');
INSERT INTO public.users VALUES (328, 'user_1686798800453');
INSERT INTO public.users VALUES (272, 'user_1686798363753');
INSERT INTO public.users VALUES (274, 'user_1686798363752');
INSERT INTO public.users VALUES (330, 'user_1686798800452');
INSERT INTO public.users VALUES (336, '');
INSERT INTO public.users VALUES (337, 'user_1686798937296');
INSERT INTO public.users VALUES (338, 'user_1686798937295');
INSERT INTO public.users VALUES (339, 'user_1686798969233');
INSERT INTO public.users VALUES (340, 'user_1686798969232');
INSERT INTO public.users VALUES (341, 'user_1686798975478');
INSERT INTO public.users VALUES (342, 'user_1686798975477');
INSERT INTO public.users VALUES (343, 'user_1686798984632');
INSERT INTO public.users VALUES (344, 'user_1686798984631');
INSERT INTO public.users VALUES (345, 'user_1686799323473');
INSERT INTO public.users VALUES (346, 'user_1686799323472');
INSERT INTO public.users VALUES (347, 'user_1686799330164');
INSERT INTO public.users VALUES (348, 'user_1686799330163');
INSERT INTO public.users VALUES (349, 'user_1686799546469');
INSERT INTO public.users VALUES (350, 'user_1686799546468');
INSERT INTO public.users VALUES (351, 'user_1686883779234');
INSERT INTO public.users VALUES (352, 'user_1686883779233');


--
-- Name: game_history_game_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.game_history_game_id_seq', 472, true);


--
-- Name: users_user_id_seq; Type: SEQUENCE SET; Schema: public; Owner: freecodecamp
--

SELECT pg_catalog.setval('public.users_user_id_seq', 352, true);


--
-- Name: game_history game_history_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_history
    ADD CONSTRAINT game_history_pkey PRIMARY KEY (game_id);


--
-- Name: users users_pkey; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_pkey PRIMARY KEY (user_id);


--
-- Name: users users_username_key; Type: CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.users
    ADD CONSTRAINT users_username_key UNIQUE (username);


--
-- Name: game_history game_history_user_id_fkey; Type: FK CONSTRAINT; Schema: public; Owner: freecodecamp
--

ALTER TABLE ONLY public.game_history
    ADD CONSTRAINT game_history_user_id_fkey FOREIGN KEY (user_id) REFERENCES public.users(user_id);


--
-- PostgreSQL database dump complete
--

