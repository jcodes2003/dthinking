-- phpMyAdmin SQL Dump
-- version 5.2.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Sep 18, 2024 at 05:06 PM
-- Server version: 10.4.32-MariaDB
-- PHP Version: 8.2.12

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `dbchane`
--

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activities_details`
--

CREATE TABLE `tbl_activities_details` (
  `activities_details_id` int(11) NOT NULL,
  `activities_details_headerId` int(11) NOT NULL,
  `activities_details_content` varchar(255) NOT NULL,
  `activities_details_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_activities_details`
--

INSERT INTO `tbl_activities_details` (`activities_details_id`, `activities_details_headerId`, `activities_details_content`, `activities_details_remarks`) VALUES
(1, 1, 'What activity/ies will my students do?', ''),
(2, 10, 'mag lu2', 'Activity'),
(3, 11, 'mag lu23', 'Activity'),
(4, 12, 'wala ra ', 'Activity'),
(5, 13, 'dasd', 'Activity'),
(6, 14, '1', 'Activity'),
(7, 15, '4', 'Activity'),
(8, 16, 'acd', 'Activity'),
(9, 17, '6', 'Activity'),
(10, 17, '6', 'Activity'),
(11, 18, '1', 'Activity'),
(12, 19, '92', 'Activity'),
(13, 20, '1', 'Activity'),
(14, 21, '1', 'Activity'),
(15, 22, '95', 'Activity'),
(16, 23, '1', 'Activity'),
(17, 24, '1', 'Activity'),
(18, 25, '1', 'Activity'),
(19, 26, '1', 'Activity'),
(20, 27, '1', 'Activity'),
(21, 28, '2', 'Activity'),
(22, 29, '1', 'Activity'),
(23, 30, '1', 'Activity'),
(24, 31, '1', 'Activity'),
(25, 32, '1', 'Activity'),
(26, 33, '1', 'Activity'),
(27, 34, '1', 'Activity'),
(28, 35, '3', 'Activity'),
(29, 36, '1', 'Activity'),
(30, 37, '2', 'Activity'),
(31, 38, 'wala ra ', 'Activity'),
(32, 39, '2 weeks wala ra ', 'Activity'),
(33, 40, '1', 'Activity'),
(34, 41, '1', 'Activity'),
(35, 42, '4', 'Activity'),
(36, 43, '2', 'Activity'),
(37, 44, '1', 'Activity'),
(38, 45, '1', 'Activity'),
(39, 46, '1', 'Activity'),
(40, 47, 'ywaa ', 'Activity'),
(41, 48, '1', 'Activity'),
(42, 49, '1', 'Activity'),
(43, 50, '1', 'Activity'),
(44, 51, 'DAS', 'Activity'),
(45, 52, '2WEWE', 'Activity'),
(46, 53, 'YAWAKA BA', 'Activity'),
(47, 54, '1', 'Activity'),
(48, 55, 'wala ra ', 'Activity'),
(49, 56, '1212', 'Activity'),
(50, 57, '1212', 'Activity'),
(51, 58, '1', 'Activity'),
(52, 59, '1', 'Activity');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_activities_header`
--

CREATE TABLE `tbl_activities_header` (
  `activities_header_id` int(11) NOT NULL,
  `activities_header_modulesId` int(11) NOT NULL,
  `activities_header_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_activities_header`
--

INSERT INTO `tbl_activities_header` (`activities_header_id`, `activities_header_modulesId`, `activities_header_duration`) VALUES
(1, 1, '2 Weeks'),
(7, 1, '1 week'),
(9, 25, '100weeks'),
(10, 26, '100 yeartds'),
(11, 27, '100 months'),
(12, 28, 'o months'),
(13, 29, 'asd'),
(14, 30, '1'),
(15, 31, '13'),
(16, 32, 'casdc'),
(17, 33, '6'),
(18, 36, '1'),
(19, 37, ''),
(20, 38, '1'),
(21, 39, '1'),
(22, 40, '95'),
(23, 41, '1'),
(24, 42, '1'),
(25, 43, '1'),
(26, 44, '1'),
(27, 45, '1'),
(28, 46, '2'),
(29, 47, ''),
(30, 48, '1'),
(31, 49, '1'),
(32, 50, '1'),
(33, 51, '1'),
(34, 52, '1'),
(35, 53, '1'),
(36, 54, '1 days '),
(37, 55, '1'),
(38, 56, 'q weks '),
(39, 57, '1 weeks '),
(40, 58, '1'),
(41, 59, '1'),
(42, 60, '3'),
(43, 61, '1'),
(44, 62, '1'),
(45, 65, '1'),
(46, 66, '1'),
(47, 67, '23 weeks '),
(48, 68, '1'),
(49, 69, '1'),
(50, 1, ''),
(51, 2, 'ASD'),
(52, 3, '1WEWES'),
(53, 4, '1'),
(54, 5, '12'),
(55, 6, 'ugma'),
(56, 7, '1'),
(57, 8, '121'),
(58, 9, '1'),
(59, 10, '11');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_back_cards_details`
--

CREATE TABLE `tbl_back_cards_details` (
  `back_cards_details_id` int(11) NOT NULL,
  `back_cards_details_headerId` int(11) NOT NULL,
  `back_cards_details_title` varchar(255) NOT NULL,
  `back_cards_details_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_back_cards_details`
--

INSERT INTO `tbl_back_cards_details` (`back_cards_details_id`, `back_cards_details_headerId`, `back_cards_details_title`, `back_cards_details_content`) VALUES
(1, 1, 'Observe ', 'how users interact with their environment. Capture quotes, behaviors and other notes that reflect their experience. Watching users gives you clues as to what they think and feel— what they need. '),
(2, 1, 'Engage ', 'users directly—interact with and interview them. Engaging users reveals deeper insights into their beliefs and values. '),
(3, 1, 'Immerse ', 'yourself in your users’ experience. Find (or create if necessary) ways to immerse yourself in specific environments to understand first hand who you’re designing for.\r\n'),
(4, 1, '', 'The best solutions come from the best insights into human behavior. Discover the emotions that drive user behavior. Uncover user needs (which they may or may not be aware of). Identify the right users to design for. Use your insights to design innovative solutions.');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_back_cards_header`
--

CREATE TABLE `tbl_back_cards_header` (
  `back_cards_header_id` int(11) NOT NULL,
  `back_cards_header_frontId` int(11) NOT NULL,
  `back_cards_header_title` varchar(255) NOT NULL,
  `back_content_title` text NOT NULL,
  `back_content` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_back_cards_header`
--

INSERT INTO `tbl_back_cards_header` (`back_cards_header_id`, `back_cards_header_frontId`, `back_cards_header_title`, `back_content_title`, `back_content`) VALUES
(1, 1, 'How to Empathize:', 'Observe ', 'how users interact with their environment. Capture quotes, behaviors and other notes that reflect their experience. Watching users gives you clues as to what they think and feel— what they need. '),
(2, 1, '', 'Engage ', 'users directly—interact with and interview them. Engaging users reveals deeper insights into their beliefs and values. '),
(3, 1, '', 'Immerse ', 'yourself in your users’ experience. Find (or create if necessary) ways to immerse yourself in specific environments to understand first hand who you’re designing for.'),
(4, 1, '', '', 'The best solutions come from the best insights into human behavior. Discover the emotions that drive user behavior. Uncover user needs (which they may or may not be aware of). Identify the right users to design for. Use your insights to design innovative solutions.'),
(5, 2, 'How to assume a beginner’s mindset:\n', 'Don’t judge. ', 'Observe and engage users without the influence of value judgments on their actions, circumstances, decisions, or “issues.” '),
(6, 2, '', 'Question everything. ', 'Even (and especially) the things you think you already understand. Ask questions to learn about the world from the user’s perspective. '),
(7, 2, '', 'Be truly curious. ', 'Strive to assume a posture of wonder and curiosity, both in circumstances that seem either familiar or uncomfortable. '),
(8, 2, '', 'Find patterns. ', 'Look for interesting threads and themes that emerge across user interactions. '),
(9, 2, '', 'Listen. Really. ', 'Ditch any agendas and let the scene soak into your psyche. Absorb what users say to you, and how they say it, without thinking about how you’re going to respond.'),
(10, 3, 'How to use What? How? Why?', 'Set-up. ', 'Divide a sheet into three sections: What?, How?, and Why? '),
(11, 3, '', 'Start with concrete observations. ', 'What is the user doing in a situation or photograph? Notice and write down objective details. Don’t make assumptions just yet. '),
(12, 3, '', 'Move to understanding. ', 'How is the user doing what they’re doing? Does it require effort? Do they appear rushed? Does the activity appear to be a negative or positive experience? Use phrases packed with adjectives.'),
(13, 3, '', 'Step out on a limb of interpretation. ', 'Why is the user doing what they’re doing in the particular way they’re doing it? Make informed guesses regarding motivation and emotions. This step reveals assumptions you should test with users, and often uncovers unexpected insights.'),
(14, 4, 'How to prepare for an interview: ', 'Brainstorm questions. ', 'Write down as many potential questions as your team can generate. Build on each other’s ideas to flesh out meaningful subject areas. '),
(15, 4, '', 'Identify and order themes. ', 'Identify themes or subject areas into which most questions fall. Then, determine the order of questions that will allow the conversation to flow most fluidly. This will decrease the potential for a scattershot interaction with users. '),
(16, 4, '', 'Refine questions. ', 'Once you’ve grouped your questions, you may find redundancies, or questions that seem strangely out of place. Cut them. Also, be sure to include plenty of “why?” questions, plenty of “tell me about the last time you _______?” questions, and plenty of questions directed at how the user FEELS. Remember, open ended questions allow for stories and stories lead to insights for design solutions.'),
(17, 5, 'How to interview for empathy: ', 'Ask why. ', 'Even when you think you know the answer. '),
(18, 5, '', 'Never say “usually” when asking a question. ', 'Instead, ask about a specific occurrence. “Tell me about the last time you ____.” '),
(19, 5, '', 'Encourage stories. ', 'Stories reveal how users think about the world. '),
(20, 5, '', 'Look for inconsistencies. ', 'What users say and do can be different. These inconsistencies often hide interesting insights. '),
(21, 5, '', 'Pay attention to nonverbal cues. ', 'Be aware of body language and emotions. '),
(22, 5, '', 'Don’t be afraid of silence. ', 'When you allow for silence, you give users time to reflect on their answers— which may lead to deeper responses. '),
(23, 5, '', 'Ask questions neutrally and don’t suggest answers. ', '“What do you think about buying gifts for your spouse?” is better than “Don’t you think shopping is great?”'),
(24, 6, 'How to engage with extreme users:\n', 'Determine who’s extreme.', ' First identify the aspects of your design challenge you want to explore to an extreme. Then think of extreme users within those facets. If you’re designing a grocery store, you might consider how groceries are gathered or how payment is made as aspects to explore. Honing in on gathering groceries, extreme users might include people who gather recyclables with shopping carts or product pullers for online buyers. '),
(25, 6, '', 'Engage. ', 'Observe and interview extreme users just like other folks. Look for workarounds (or other extreme behaviors) to spark inspiration and uncover insights. '),
(26, 6, '', 'Look at the extreme in all of us. ', 'Look to extreme users to spur wild ideas. Then narrow in on what resonates with the primary users that you’re designing for.'),
(27, 7, 'How to story share-and-capture: ', '', 'Unpack observations and share stories that stick out from your team’s empathy fieldwork. While each team member shares notes and user stories, others should headline quotes, surprises, and interesting tidbits—one headline per post-it. \r\n\r\nThe post-its can be physically grouped and re-grouped on the board to illuminate themes and patterns. \r\n\r\nThe end goal is to understand what’s really going on with each user to discover who your users are and what they need in regard to your design space.\r\n'),
(28, 8, 'How to use a journey map: ', 'Choose a process to examine. ', 'For example, your user’s morning breakfast routine. Then create a map of that process that captures every step. Organize the data in a way that makes sense: a timeline of events, a series of pictures, a stack of cards. You can create a journey map based on observation and interview, or a user can draw their own. '),
(29, 8, '', 'Be comprehensive. ', 'Don’t overlook the opening of window shades during the morning breakfast routine. What seems meaningless could be the nugget that develops into a stunning insight.'),
(30, 8, '', 'Look for patterns and anomalies. ', 'Push yourself to connect individual events to a larger framework. It’s often the pairing of an observation with prior knowledge that yields a meaningful insight.'),
(31, 9, 'How to prototype for empathy: ', '', 'Prototype for empathy to dig deeper into user needs or probe an insight you’re developing. You can create empathy prototypes to test with users or with your design team. Consider these examples. '),
(32, 9, '', 'Sketch.', 'Ask users to draw something and talk about it afterward. “Draw how you get to work.” '),
(33, 9, '', 'Play. ', 'Create a game to probe issues you want to explore. Use a simple card game to force users to make choices related to your design challenge. '),
(34, 9, '', 'Simulate. \r\n\r\n', 'Simulate an aspect of the user experience to better understand it yourself. If users garden while carrying a baby, put on a sling and carry ten pounds while gardening.\r\n'),
(35, 10, 'How to create a user-driven prototype:\n', '', 'Strike a balance between how much you provide and how much you ask users to create. The ideal prototype should be scaffolded enough to spur generative thinking, but open enough to broaden user understanding. \r\n\r\nSome user-driven prototypes ask users to draw something (“draw going to the doctor”), make an object (“make a diaper bag with this paper and tape”), or compile artifacts (“tear out magazine pictures that depict your ideal mall shopping experience”). \r\n\r\nIf you were designing a website for users to create custom t-shirts, a traditional prototype might be a mockup of the website. A user-driven prototype might be a blank piece of paper for users to draw their own website. Scaffolding to get users going might include empty boxes on the page for them to fill in with content.\r\n'),
(36, 11, 'How to tell stories:', '', 'Follow the structure of a story spine to flesh out the narrative arc of your user-centered story: \r\n\r\nOnce upon a time... \r\nAnd every day... \r\nUntil one day... \r\nBecause of that... \r\nAnd because of that... \r\nUntil finally... \r\nAnd ever since that day... \r\nAnd the moral is... \r\n\r\nRemember, your user is the hero of your story, not your concept. Your concept contributes to the transformation of your character, and to the relief of dramatic tension, but it’s not the main character. \r\nOnce you’ve finished your story, remove the stems from the story spine prompts. Don’t say “once upon a time,” for example, when you tell your story to an actual audience. Just like scaffolding for painters, the story spine prompts get removed once they serve their purpose. What remains should be a believable, compelling user story.\r\n'),
(37, 12, 'How to use I like, I wish, what if:\r\n', '', 'IL/IW/WI is almost too simple to write down, but it’s too useful not to mention. Meet as a group. Team members chime in by expressing “likes,” “wishes,” or “what ifs” as succinct headlines. \r\n\r\n“I like how we broke our team into pairs.” “I wish we had discussed our plan before testing.” “What if we tried one more prototype?” \r\n\r\nShare dozens of headlines in a session (be sure to pick someone to capture). You don’t need to respond to every one. Let the team decide which topics to discuss as they arise.\r\n'),
(38, 13, 'How to gather empathetic data:\n', '', 'Take your prototype (it doesn’t need to be perfect, just usable) and place it in a context where your users currently experience your product or service. Bonus points if you can find a setting that allows users to test the current offering and the new offering. \r\n\r\nExtra bonus points if that setting is low pressure, so customers feel comfortable giving open and honest feedback. For example, d.school alum, Bill Pacheco, tested exercise machine prototypes in a real gym with actual users. \r\n\r\nDuring your test, capture usage counts, quotes, and reactions via notes or video. Create a sizable data sample to support and refine your prototype. \r\n\r\nPro tip: bring your decision makers along to watch and interact with users.\r\n'),
(39, 14, 'How to review your portfolio:\r\n', '', 'Create a simple 2x2 matrix. Plot “depth of insight” on the x-axis, from shallow to deep. Shallow insights are things the team knew before the project started. Deep insights expose the problem in a brand new light. \r\n\r\nPlot “disruptiveness of concept” on the y-axis, from incremental to breakthrough. Incremental concepts are simple builds on existing products or services (or things the organization has tried before). Breakthrough concepts have never been tried—they might even be new to the industry. \r\n\r\nIt’s easier to move a deep insight up to breakthrough territory than it is to move a shallow insight. When reviewing your portfolio, ask “which concepts address problems we’ve never considered?” These concepts are easier to “Yes, And!” into breakthrough territory.\r\n'),
(40, 15, 'How to conduct an empathy probe: ', 'Create a probe. ', 'A probe is a prompt that users engage with while you interview them. We often create probes in the form of a set of cards: one question card and 7 answer cards, that the user sorts through. A probe sparks interaction and provokes storytelling on the part of the user. '),
(41, 15, '', 'Engage users. \r\n\r\n', 'Ask them to share their thoughts aloud. If your probe asks users to consider a particular experience, find out the exact experience they’re considering before they begin the sorting activity. \r\n'),
(42, 15, '', 'Follow up on interesting comments, movements, and pauses. \r\n\r\n', 'Always start with what you noticed. “You mentioned that you ____. Could you tell me a little more about that?” “I noticed when you read that card, you said ____. What were you thinking?” Pay special attention to rich emotional material. \r\n'),
(43, 15, '', 'Seek stories relevant to the emotions you uncover. \r\n\r\n', 'Spend the majority of your time here. Steer stories toward specificity. You need specifics to fuel your design work. “Is there a specific time you can remember feeling / doing that?”\r\n'),
(44, 16, 'How to use analogies:', '', 'Identify and explore specific aspects of your design challenge in new ways! \r\n\r\nGather a team to talk about what aspects of your challenge you’d like to explore further. For example, if you’re designing for hospital technicians, and you’re interested in understanding extreme time pressures or high stakes decisions, brainstorm spaces that are tangential to the design challenge that share enough attributes where there may be insight cross-over. \r\n\r\nFor the hospital challenge you might explore extreme time pressures at an airport, or for high stakes decisions, a police training academy or fire station. Observe and interview people in these analogous locations. \r\n\r\nMake an analogous inspiration board. \r\n\r\nSaturate a space with photos and quotes from your analogous space; this can help the team share inspiration, or bring in the analogous insight later in the process.\r\n'),
(45, 17, 'How to shoot video:', '', '1.	Know your intention. What’s the one thing you want your audience to leave with? \r\n\r\n2.	Get a tight frame of your subject at all times. \r\n\r\n3.	Be conscious of light sources and shadows on your subject. \r\n\r\n\r\n4.	Overshoot! Get more than you think you need. Editing is where the storytelling begins. Remember to get longer takes. They allow you some wiggle room for transitions. \r\n\r\n5.	Keep mic close to the subject (boom mic preferred). \r\n\r\n6.	Point mic away from undesired noise.\r\n'),
(46, 18, 'How to edit video:', '', 'To edit quickly and create compelling videos, follow these guidelines: \r\n\r\nDuring the process, ensure an audience will understand your visual narrative. Remember, it’s better to be clear than clever. \r\n\r\nMake an initial rough cut of the whole film. Block out the beginning, middle and end. \r\n\r\nKill the darlings. Remain focused on what will tell your story best. \r\n\r\nWhat you hear is equally important to what you see. Ensure any music compliments your visuals and doesn\'t distract. \r\n\r\nBefore exporting your video, know where it will live. If to be played off your computer, use minimal compression to ensure quality. For social media or video hosting sites, consult their listed guidelines.\r\n'),
(47, 19, 'How to define: ', '', 'The define mode explicitly expresses the problem you strive to address. In order to be truly generative, you must reframe your challenge based on new insights gained through your empathy work. This reframed Point of View, or problem statement, can then be used as a solution-generating springboard. \r\nA spectacular Point of View... \r\nPreserves emotion and the individual \r\nyou’re designing for. \r\nIncludes strong language. \r\nUses sensical wording. \r\nIncludes a strong insight. \r\nGenerates lots of possibilities.\r\n'),
(48, 20, 'How to story share-and-capture: ', '', 'Unpack observations and share stories that stick out from your team’s empathy fieldwork. While each team member shares notes and user stories, others should headline quotes, surprises, and interesting tidbits—one headline per post-it. \r\n\r\nThe post-its can be physically grouped and re-grouped on the board to illuminate themes and patterns. \r\n\r\nThe end goal is to understand what’s really going on with each user to discover who your users are and what they need in regard to your design space.\r\n'),
(49, 21, 'How to use a journey map: ', 'Choose a process to examine. ', 'For example, your user’s morning breakfast routine. Then create a map of that process that captures every step. Organize the data in a way that makes sense: a timeline of events, a series of pictures, a stack of cards. You can create a journey map based on observation and interview, or a user can draw their own. '),
(50, 21, '', 'Be comprehensive. \r\n', 'Don’t overlook the opening of window shades during the morning breakfast routine. What seems meaningless could be the nugget that develops into a stunning insight.\r\n'),
(51, 21, '', 'Look for patterns and anomalies. \r\n\r\n', 'Push yourself to connect individual events to a larger framework. It’s often the pairing of an observation with prior knowledge that yields a meaningful insight.\r\n'),
(52, 22, 'How to use Powers of Ten:', '', 'Consider increasing and decreasing magnitudes of context to reveal connections and insights. '),
(53, 22, '', 'Powers of ten for insight development. \r\n', 'Imagine you’re designing a checkout experience. You already observed that users read customer reviews before purchasing, and developed the insight that users value peer opinions when shopping. Now imagine the user is shopping for items over a wide magnitude of costs—from mints, to a bed, to a house. Does this alter user behavior? Probe for nuances in your insight. Note where it breaks down. \r\n'),
(54, 22, '', 'Powers of ten for ideation. \r\n\r\n', 'Add constraints that alter the magnitude of the solution space. “What if it had to cost more than a million dollars to implement?” “Or less than 25 cents?” “What if it was larger than this room?” “Or smaller than a wallet?”\r\n'),
(55, 23, 'How to use a 2x2 matrix:', '', 'Draw a 2x2 matrix (x-axis and y-axis), pick a spectrum for each axis (opposites on either end), and plot items on the map. You can explore any group of things— products, motivations, users. \r\n\r\nYou might place products on a matrix of perceived quality (low to high) versus use of natural materials (all-natural to all-synthetic). Where do groups form? Notice full or empty quadrants. Where does the assumed correlation break down? \r\n\r\nYou may have to try various combinations of spectra to find one that’s meaningful. Often the discussion spurred by filling in the matrix is more valuable than the map itself. You can also use a 2x2 matrix to create a competitive landscape. An empty quadrant may signal a market opportunity (or a very bad idea).\r\n'),
(56, 24, 'How to why-how ladder:', 'Step 1 \r\n\r\n', 'Identify a few meaningful user needs and write them at the bottom of a piece of paper. \r\n'),
(57, 24, '', 'Step 2 \r\n\r\n', 'Ladder up from that need, asking “why?” For example, why would a user “need to see a link between a product and the process that creates it?” because the user, “needs confidence that it won’t harm their health by understanding its origin.” \r\n'),
(58, 24, '', 'Step 3 \r\n\r\n', 'Ask why again, and continue to ladder from that same need. At a certain point, you’ll reach a very common, abstract need such as, “the need to be healthy.” This is the top of the ladder. \r\n'),
(59, 24, '', 'Step 4 \r\n\r\n', 'Climb back down the ladder asking “how?” This will give you ideas for how to address the needs.\r\n'),
(60, 25, 'How to write a Point of View (POV) statement: ', '', 'After you’ve interpreted your user empathy interviews, try different ways of stating the problem.'),
(61, 25, '', 'POV framework.', 'Start by describing your user in colorful language, including pertinent details. Then, choose your favorite surprise/insight that represents the most powerful shift in your own perspective. Last, articulate what would be game-changing for your user, assuming your insight is correct. '),
(62, 25, '', 'POV musts. ', '\r\n•	Make sure your POV flows sensically (so a stranger could comprehend it). \r\n•	Specifies an insight that’s focused on a specific user (rather than a demographic) \r\n•	Articulates a game-changing direction, without dictating a particular solution.\r\n'),
(63, 26, 'How to use design guidelines:\n', '', 'You can translate your insights and observations into design guidelines by stating your findings in terms of solutions rather than observations about the user. For example, a user’s “need to feel instrumental in creating a gift” becomes “involve the user in creating a gift.” \r\n\r\nYou can also work backwards from a potential solution to create design guidelines. Ask yourself what aspects of the solution resonates with users, and makes those aspects into guidelines/directives. \r\n\r\nDesign guidelines should be independent of a solution—that is, they should be useful regardless of the design solution. You may know you’re designing a gift product, but unsure if it’s physical, digital, or experiential. The design guideline above (“involve the gift-giver in creating the final gift”) is still helpful even though you don’t yet know the ultimate design solution.\r\n'),
(64, 27, 'How to write “how might we” (HMW) questions:\n ', '', 'Start with your design challenge and Point of View statement (see card #11). Then break down the larger challenge into smaller actionable bits and ask questions that open up the solution space.'),
(65, 27, '', 'Challenge \r\n', 'Redesign the airport waiting space. \r\n'),
(66, 27, '', 'Point of View \r\n\r\n', 'A frenzied mother of three rushes to her gate to find out her flight is delayed. She has to entertain her playful children to avoid irritating already-frustrated fellow passengers. \r\n'),
(67, 27, '', 'How Might We\r\n\r\n', ' Alleviate tension: HMW separate the kids from fellow passengers? \r\nExplore the opposite: HMW make the wait the most exciting part of the trip? \r\nQuestion an assumption: HMW remove wait time altogether?\r\nCreate an analogy from need to context: HMW make the airport like a spa? Like a playground? \r\nChange a status quo: HMW make playful, loud kids less annoying?'),
(68, 28, 'How to tell stories:', '', 'Follow the structure of a story spine to flesh out the narrative arc of your user-centered story: \r\n\r\nOnce upon a time... \r\nAnd every day... \r\nUntil one day... \r\nBecause of that... \r\nAnd because of that... \r\nUntil finally... \r\nAnd ever since that day... \r\nAnd the moral is... \r\n\r\nRemember, your user is the hero of your story, not your concept. Your concept contributes to the transformation of your character, and to the relief of dramatic tension, but it’s not the main character. \r\nOnce you’ve finished your story, remove the stems from the story spine prompts. Don’t say “once upon a time,” for example, when you tell your story to an actual audience. Just like scaffolding for painters, the story spine prompts get removed once they serve their purpose. What remains should be a believable, compelling user story.\r\n'),
(69, 29, 'How to use I like, I wish, what if:\n', '', 'IL/IW/WI is almost too simple to write down, but it’s too useful not to mention. Meet as a group. Team members chime in by expressing “likes,” “wishes,” or “what ifs” as succinct headlines. \r\n\r\n“I like how we broke our team into pairs.” “I wish we had discussed our plan before testing.” “What if we tried one more prototype?” \r\n\r\nShare dozens of headlines in a session (be sure to pick someone to capture). You don’t need to respond to every one. Let the team decide which topics to discuss as they arise.\r\n'),
(70, 30, 'How to review your portfolio:\n', '', 'Create a simple 2x2 matrix. Plot “depth of insight” on the x-axis, from shallow to deep. Shallow insights are things the team knew before the project started. Deep insights expose the problem in a brand new light. \r\n\r\nPlot “disruptiveness of concept” on the y-axis, from incremental to breakthrough. Incremental concepts are simple builds on existing products or services (or things the organization has tried before). Breakthrough concepts have never been tried—they might even be new to the industry. \r\n\r\nIt’s easier to move a deep insight up to breakthrough territory than it is to move a shallow insight. When reviewing your portfolio, ask “which concepts address problems we’ve never considered?” These concepts are easier to “Yes, And!” into breakthrough territory.\r\n'),
(71, 31, 'How to describe your concept:\n', '', 'Select an idea from your brainstorm and flesh out the concept while it’s fresh in your team’s mind. What would you name it? Who is it for? What does it accomplish for them? How does it accomplish this? Here, your team can really specify how your product or service does what it does. Make it your goal to articulate a single function that your concept performs in order to achieve the desired user impact. \r\n\r\nPro tip: If your concept either 1) doesn’t relate to your user or 2) doesn’t bring you to a game-changing idea, don’t worry, you’ve made a common mistake. Revisit your brainstorm and pick another idea that’s more user-centric.\r\n'),
(72, 32, 'How to make the surprise-to-insights leap:', '', 'Place a few surprising observations from your empathy work on the left-hand side of the board. Pick one to start and ask your team to interpret the behavior by finishing the sentence, “I wonder if this means that the user _____.” Everyone writes down their interpretation, then reads aloud (one by one), and places it on the right-hand side of the board, across from the surprise. \r\n\r\nIf an interpretation sparks new ideas from the team, feel free to craft more interpretations and add them to the board. Continue the same process with the rest of your surprising observations.\r\n'),
(73, 33, 'How to shoot video:', '', '\r\n1.	Know your intention. What’s the one thing you want your audience to leave with? \r\n\r\n2.	Get a tight frame of your subject at all times. \r\n\r\n3.	Be conscious of light sources and shadows on your subject. \r\n\r\n\r\n4.	Overshoot! Get more than you think you need. Editing is where the storytelling begins. Remember to get longer takes. They allow you some wiggle room for transitions. \r\n\r\n5.	Keep mic close to the subject (boom mic preferred). \r\n\r\n6.	Point mic away from undesired noise.\r\n'),
(74, 34, 'How to edit video:', '', 'To edit quickly and create compelling videos, follow these guidelines: \r\n\r\nDuring the process, ensure an audience will understand your visual narrative. Remember, it’s better to be clear than clever. \r\n\r\nMake an initial rough cut of the whole film. Block out the beginning, middle and end. \r\n\r\nKill the darlings. Remain focused on what will tell your story best. \r\n\r\nWhat you hear is equally important to what you see. Ensure any music compliments your visuals and doesn\'t distract. \r\n\r\nBefore exporting your video, know where it will live. If to be played off your computer, use minimal compression to ensure quality. For social media or video hosting sites, consult their listed guidelines.\r\n'),
(77, 35, 'How to ideate:  ', '', 'You ideate in order to transition from identifying problems to exploring solutions for your users.'),
(78, 35, '', 'Ideation is leveraged to: ', '-Harness the collective perspectives and strengths of your team. \r\n-Step beyond obvious solutions and drive innovation.\r\n -Uncover unexpected areas of exploration. \r\n-Create fluency (volume) and flexibility (variety) in your innovation options. \r\nWhen ideating, your team needs to fluctuate between times of focus and flare. Idea generation is a moment to “go wide” while evaluation/selection of ideas is a time for narrowing-in. \r\nCurtailing “bad” behaviors, such as evaluating during idea generation, is very important—innovative concepts can often come from the most outlandish ideas.\r\n'),
(79, 36, 'How to use Powers of Ten:', '', 'Consider increasing and decreasing magnitudes of context to reveal connections and insights. '),
(80, 36, '', 'Powers of ten for insight development. \r\n', 'Imagine you’re designing a checkout experience. You already observed that users read customer reviews before purchasing, and developed the insight that users value peer opinions when shopping. Now imagine the user is shopping for items over a wide magnitude of costs—from mints, to a bed, to a house. Does this alter user behavior? Probe for nuances in your insight. Note where it breaks down. \r\n'),
(81, 36, '', 'Powers of ten for ideation. \r\n\r\n', 'Add constraints that alter the magnitude of the solution space. “What if it had to cost more than a million dollars to implement?” “Or less than 25 cents?” “What if it was larger than this room?” “Or smaller than a wallet?”\r\n'),
(82, 37, 'How to write “how might we” (HMW) questions:\n', '', 'Start with your design challenge and Point of View statement (see card #11). Then break down the larger challenge into smaller actionable bits and ask questions that open up the solution space. '),
(83, 37, '', 'Challenge \r\n', 'Redesign the airport waiting space. \r\n'),
(84, 37, '', 'Point of View \r\n\r\n', 'A frenzied mother of three rushes to her gate to find out her flight is delayed. She has to entertain her playful children to avoid irritating already-frustrated fellow passengers. '),
(85, 37, '', 'How Might We\r\n\r\n', ' Alleviate tension: HMW separate the kids from fellow passengers? \r\nExplore the opposite: HMW make the wait the most exciting part of the trip? \r\nQuestion an assumption: HMW remove wait time altogether?\r\nCreate an analogy from need to context: HMW make the airport like a spa? Like a playground? \r\nChange a status quo: HMW make playful, loud kids less annoying?'),
(86, 38, '', 'Category, category, out! \r\n', 'Line folks up, name a category (breakfast cereals, vegetables, cars), and point at people in rapid succession, skipping around the group. The player pointed at must name something in the category. If they don’t, everyone yells “Out!” and they’re out for the rest of the round. \r\n'),
(87, 38, '', 'Sound ball. \r\n\r\n', 'Stand in a circle and throw an imaginary ball to each other. Make eye contact and make a noise as you throw it. The catcher must repeat the noise of the thrower and make a new noise as she throws to the next person. Try increasing the speed or adding a second ball. '),
(88, 38, '', 'Yes, Let’s! \r\n\r\n', 'Everyone walk around the room randomly. One person voices an instruction: “let’s act like we’re at a cocktail party” or “let’s act like there’s no gravity.” Everyone shouts back, “Yes, let’s!” and acts it out. At anytime someone can yell the next instruction. The answer is always, “Yes, let’s!”'),
(89, 39, 'How to brainstorm:\r\n\r\n', 'Your team’s sole goal is to generate as many ideas as possible, without judgment. Gather in front of a whiteboard and spend 15 to 30 minutes in high engagement “brainstorm mode.” \r\n\r\nBe sure to capture every idea, regardless of your feelings about them. You can either assign a scribe to capture ideas as they’re called out or go all-in, each person shares their ideas out loud and puts them on the board themself. Either way, use post-its and stick them up quickly. \r\n\r\nYou can use How Might We questions to launch a brainstorm (see card #13). “How might we give each shopper a personal checkout experience?”', ''),
(90, 40, 'How to facilitate a brainstorm:\n', 'Energy. \r\n\r\n', 'As facilitator, it’s your task to keep ideas flowing. Be sure to write a compelling question to kick off the brainstorm. If the team slows or gets stuck, add a variation to the prompt to shake things up (prepare options ahead of time). '),
(91, 40, '', 'Constraints. \r\n\r\n', 'Add solution constraints to spark new ideas. “What if it had to be round?” “How would superman do it?” Or create process constraints, such as shooting for 50 ideas in 20 minutes. '),
(92, 40, '', 'Space. \r\n\r\n', 'Be mindful of where you brainstorm. Find a room with lots of vertical work space. Make sure all participants are standing and have supplies in hand—post-its and a sharpie.'),
(93, 41, 'How to select brainstorm ideas:\n', '', 'Don’t narrow down ideas too fast. An implausible idea may spark a useful or meaningful insight. Hang onto ideas that excite, amuse, or intrigue the team. Consider these three selection techniques. \r\n\r\n'),
(94, 41, '', 'Post-it voting. \r\n', 'Each team member gets three votes. The post-its with the most marks get selected. \r\n'),
(95, 41, '', 'Four categories. \r\n\r\n', 'Elect one or two ideas within each category: the rational choice, the most likely to delight, the darling, and the long shot. '),
(96, 41, '', 'Bingo. \r\n', 'Pick one or two ideas that inspire a physical prototype, a digital prototype, and an experience prototype. \r\nIf an idea is so far out there that it seems pointless to test, ask what attracted you to it, then test that aspect or integrate it into a new solution.\r\n'),
(97, 42, 'How to impose constraints:', '', 'It’s important to be conscious of when and what constraints you impose. Imposing a constraint during idea generation is different than rejecting ideas due to preconceived notions about users. Consider these three constraint examples. '),
(98, 42, '', 'Ideation. \r\n', 'During a brainstorm, temporarily add a solution constraint. “What if it were made for babies?” “How would McDonald’s do it?” \r\n'),
(99, 42, '', 'Prototyping. \r\n\r\n', 'Constrain materials to build quicker, lower resolution prototypes. Developing a checkout service? Prototype it with cardboard, post-its, and a sharpie. Designing soccer cleats? Your shoe, tape and thumb tacks. Or, impose solution constraints. How might you design it for blind users? Without plastic? '),
(100, 42, '', 'Time. \r\n\r\n', 'Constrain time to force output. Make two prototypes in an hour. Spend three hours with users by Friday.'),
(101, 43, 'How to tell stories:', '', 'Follow the structure of a story spine to flesh out the narrative arc of your user-centered story: \r\n\r\nOnce upon a time... \r\nAnd every day... \r\nUntil one day... \r\nBecause of that... \r\nAnd because of that... \r\nUntil finally... \r\nAnd ever since that day... \r\nAnd the moral is... \r\n\r\nRemember, your user is the hero of your story, not your concept. Your concept contributes to the transformation of your character, and to the relief of dramatic tension, but it’s not the main character. \r\nOnce you’ve finished your story, remove the stems from the story spine prompts. Don’t say “once upon a time,” for example, when you tell your story to an actual audience. Just like scaffolding for painters, the story spine prompts get removed once they serve their purpose. What remains should be a believable, compelling user story.\r\n'),
(102, 44, 'How to use I like, I wish, what if:\n', '', 'IL/IW/WI is almost too simple to write down, but it’s too useful not to mention. Meet as a group. Team members chime in by expressing “likes,” “wishes,” or “what ifs” as succinct headlines. \r\n\r\n“I like how we broke our team into pairs.” “I wish we had discussed our plan before testing.” “What if we tried one more prototype?” \r\n\r\nShare dozens of headlines in a session (be sure to pick someone to capture). You don’t need to respond to every one. Let the team decide which topics to discuss as they arise.\r\n'),
(103, 45, 'How to review your portfolio:\n', '', 'Create a simple 2x2 matrix. Plot “depth of insight” on the x-axis, from shallow to deep. Shallow insights are things the team knew before the project started. Deep insights expose the problem in a brand new light. \r\n\r\nPlot “disruptiveness of concept” on the y-axis, from incremental to breakthrough. Incremental concepts are simple builds on existing products or services (or things the organization has tried before). Breakthrough concepts have never been tried—they might even be new to the industry. \r\n\r\nIt’s easier to move a deep insight up to breakthrough territory than it is to move a shallow insight. When reviewing your portfolio, ask “which concepts address problems we’ve never considered?” These concepts are easier to “Yes, And!” into breakthrough territory.\r\n'),
(104, 46, 'How to conduct a Yes, And! brainstorm:\n', '', 'Write down a game-changing idea on a whiteboard. (“It would be game changing to ____.”) Give team members a couple minutes to write down (on a post-it) one novel approach to accomplishing the “game changer”. Have them briefly share their novel ideas and place them on the board. \r\n\r\nThen lead the team through a series of “Yes, And!” brainstorms for each idea. Ask team members to build on the ideas by saying “yes, and” before they contribute. Make sure every team member builds on the idea before moving on to the next one. \r\n\r\nIf some of the builds spark other ideas, feel free to capture those too. Repeat the process until everyone’s idea has been built upon by everyone else at least once.\r\n'),
(105, 47, 'How to shoot video:', '', '1.	Know your intention. What’s the one thing you want your audience to leave with? \r\n\r\n2.	Get a tight frame of your subject at all times. \r\n\r\n3.	Be conscious of light sources and shadows on your subject. \r\n\r\n\r\n4.	Overshoot! Get more than you think you need. Editing is where the storytelling begins. Remember to get longer takes. They allow you some wiggle room for transitions. \r\n\r\n5.	Keep mic close to the subject (boom mic preferred). \r\n\r\n6.	Point mic away from undesired noise.\r\n'),
(106, 48, '', '', 'To edit quickly and create compelling videos, follow these guidelines: \r\n\r\nDuring the process, ensure an audience will understand your visual narrative. Remember, it’s better to be clear than clever. \r\n\r\nMake an initial rough cut of the whole film. Block out the beginning, middle and end. \r\n\r\nKill the darlings. Remain focused on what will tell your story best. \r\n\r\nWhat you hear is equally important to what you see. Ensure any music compliments your visuals and doesn\'t distract. \r\n\r\nBefore exporting your video, know where it will live. If to be played off your computer, use minimal compression to ensure quality. For social media or video hosting sites, consult their listed guidelines.\r\n'),
(107, 49, 'How to prototype:', '', 'Prototyping is often thought of as a way to test functionality, but it serves many other purposes. '),
(108, 49, '', 'Empathy gaining. \r\n', 'Prototyping deepens your understanding of users and the design space. \r\n'),
(109, 49, '', 'Exploration. \r\n', 'Develop multiple concepts to test in parallel. \r\n'),
(110, 49, '', 'Testing. \r\n', 'Create prototypes to test and refine solutions. \r\n'),
(111, 49, '', 'Inspiration. \r\n', 'Inspire others by showcasing your vision.\r\n'),
(112, 50, 'How to impose constraints:', '', 'It’s important to be conscious of when and what constraints you impose. Imposing a constraint during idea generation is different than rejecting ideas due to preconceived notions about users. Consider these three constraint examples. '),
(113, 50, '', 'It’s important to be conscious of when and what constraints you impose. Imposing a constraint during idea generation is different than rejecting ideas due to preconceived notions about users. Consider these three constraint examples. \r\n', 'Ideation \r\nDuring a brainstorm, temporarily add a solution constraint. “What if it were made for babies?” “How would McDonald’s do it?” \r\n'),
(114, 50, '', 'Prototyping. \r\n\r\n', 'Constrain materials to build quicker, lower resolution prototypes. Developing a checkout service? Prototype it with cardboard, post-its, and a sharpie. Designing soccer cleats? Your shoe, tape and thumb tacks. Or, impose solution constraints. How might you design it for blind users? Without plastic? '),
(115, 50, '', 'Time. \r\n\r\n', 'Constrain time to force output. Make two prototypes in an hour. Spend three hours with users by Friday.'),
(116, 51, 'How to prototype for empathy:', '', 'Prototype for empathy to dig deeper into user needs or probe an insight you’re developing. You can create empathy prototypes to test with users or with your design team. Consider these examples. '),
(117, 51, '', 'Sketch.\r\n', 'Ask users to draw something and talk about it afterward. “Draw how you get to work.” \r\n'),
(118, 51, '', 'Play. \r\n\r\n', 'Create a game to probe issues you want to explore. Use a simple card game to force users to make choices related to your design challenge. '),
(119, 51, '', 'Simulate. \r\n\r\n', 'Simulate an aspect of the user experience to better understand it yourself. If users garden while carrying a baby, put on a sling and carry ten pounds while gardening.'),
(120, 52, 'How to improvise to life:', '', 'Act it out, to figure it out. Quickly assign roles to the team to bring your concept to life. Pick someone to be the user. Someone else to play the “technology”, or the solution you’ve envisioned. If you’re designing a checkout experience, other roles might include shoppers in the store. Be sure to assign observers to watch and tag in when someone gets stuck. \r\n\r\nReally dive into it. Now and then, break the scene to discuss what’s working, what’s not, and to swap in observers (new “technology” role players should perform the function in a different way, to see how it affects the user’s experience).\r\n'),
(121, 53, 'How to use the scenes/ props/roles tool: ', '', 'Gather a team to test with you in the field. Then, figure out: '),
(122, 53, '', 'Where should a user ideally encounter your concept? \r\n', 'This is the “scene” that you want to test in, or, at the very least, recreate in your own space.\r\n'),
(123, 53, '', 'What props do you need to build? \r\n\r\n', 'These are the bare minimum physical artifacts necessary to suspend disbelief for the user and imagine that they’re experiencing your concept. '),
(124, 53, '', 'What roles do you need to play? \r\n\r\n', 'Who’s going to source and host users? Who’s going to be actively engaged in the prototype (either directly interacting with the user, or performing some function in the background)? Who’s going to observe and take notes?'),
(125, 54, 'How to test with users:', 'Let your user experience the prototype. \r\n\r\n', 'Show don’t tell. Put your prototype in the user’s hands (or your user in the prototype) and give only the basic context they need to understand what to do. '),
(126, 54, '', 'Have them talk through their experience. \r\n', 'Use prompts. “Tell me what you’re thinking as you do this.” \r\n'),
(127, 54, '', 'Actively observe. \r\n', 'Don’t immediately “correct” your user. Watch how they use (and misuse) your prototype. \r\n'),
(128, 54, '', 'Follow up with questions. \r\n', 'This is often the most valuable part. “Show me why this would (not) work for you.” “Can you tell me how this made you feel?” “Why?” Answer questions with questions. “Well, what do you think that button does?”\r\n'),
(129, 55, 'How to prototype to decide:', '', 'If the team is stuck between multiple opinions, build out multiple prototypes (for agility purposes, limit the team to 3-5 prototypes). Develop models of potential design candidates. \r\n\r\nBe sure to distill the design problem down to discrete elements, isolating the variable you’re testing. \r\n\r\nBuild as quickly and low-resolution as possible. Then test your prototypes on the team, outsider peers, or, better yet, test your prototypes on real users. Be sure to capture feedback.\r\n'),
(130, 56, 'How to identify a variable:', '', 'Prototype with a purpose. Based on user needs and insights, identify one variable of your concept to flesh out and test. Then build a few iterations. Keep prototypes as low resolution as possible. \r\n\r\nRemember, a prototype doesn’t have to be, or even look like the solution. You might want to know how heavy a device should be. Create prototypes of varied weight, without making them operable. You may want to find out if users prefer delivery versus pick up. Build boxes for each service, without filling them. \r\n\r\nBy selecting one variable to test, you can bring resolution to that aspect of your concept and slide one step closer to a design solution.\r\n'),
(131, 57, 'How to create a user- driven prototype:\n', '', 'Strike a balance between how much you provide and how much you ask users to create. The ideal prototype should be scaffolded enough to spur generative thinking, but open enough to broaden user understanding. \r\n\r\nSome user-driven prototypes ask users to draw something (“draw going to the doctor”), make an object (“make a diaper bag with this paper and tape”), or compile artifacts (“tear out magazine pictures that depict your ideal mall shopping experience”). \r\n\r\nIf you were designing a website for users to create custom t-shirts, a traditional prototype might be a mockup of the website. A user-driven prototype might be a blank piece of paper for users to draw their own website. Scaffolding to get users going might include empty boxes on the page for them to fill in with content.\r\n'),
(132, 58, 'How to create a Wizard of Oz prototype:\n', '', 'Determine what you want to test. Then figure out how to fake that functionality and still give users an authentic experience. \r\nYou can combine existing tools (tablets, email systems, Powerpoint) with human intervention to create the illusion of functionality. \r\nThe company Aardvark needed to test user reactions to their online interface for connecting people with questions to qualified people with answers. Instead of coding, they used an instant messaging system and team members behind the scenes to physically route questions and answers to the right people. \r\nWizard of Oz prototypes can be extended beyond the digital realm, to physical prototypes. You could prototype a vending machine without building the mechanics behind it—using a person hidden inside to deliver purchases.\r\n'),
(133, 59, 'How to tell stories:\r\n\r\n', '', 'Follow the structure of a story spine to flesh out the narrative arc of your user-centered story: \r\n\r\nOnce upon a time... \r\nAnd every day... \r\nUntil one day... \r\nBecause of that... \r\nAnd because of that... \r\nUntil finally... \r\nAnd ever since that day... \r\nAnd the moral is... \r\n\r\nRemember, your user is the hero of your story, not your concept. Your concept contributes to the transformation of your character, and to the relief of dramatic tension, but it’s not the main character. \r\nOnce you’ve finished your story, remove the stems from the story spine prompts. Don’t say “once upon a time,” for example, when you tell your story to an actual audience. Just like scaffolding for painters, the story spine prompts get removed once they serve their purpose. What remains should be a believable, compelling user story.'),
(134, 60, 'How to use I like, I wish, what if:\n', '', 'IL/IW/WI is almost too simple to write down, but it’s too useful not to mention. Meet as a group. Team members chime in by expressing “likes,” “wishes,” or “what ifs” as succinct headlines. \r\n\r\n“I like how we broke our team into pairs.” “I wish we had discussed our plan before testing.” “What if we tried one more prototype?” \r\n\r\nShare dozens of headlines in a session (be sure to pick someone to capture). You don’t need to respond to every one. Let the team decide which topics to discuss as they arise.\r\n'),
(135, 61, 'How to gather empathetic data:\n', '', 'Take your prototype (it doesn’t need to be perfect, just usable) and place it in a context where your users currently experience your product or service. Bonus points if you can find a setting that allows users to test the current offering and the new offering. \r\n\r\nExtra bonus points if that setting is low pressure, so customers feel comfortable giving open and honest feedback. For example, d.school alum, Bill Pacheco, tested exercise machine prototypes in a real gym with actual users. \r\n\r\nDuring your test, capture usage counts, quotes, and reactions via notes or video. Create a sizable data sample to support and refine your prototype. \r\n\r\nPro tip: bring your decision makers along to watch and interact with users.\r\n'),
(136, 62, 'How to review your portfolio:\n', '', 'Create a simple 2x2 matrix. Plot “depth of insight” on the x-axis, from shallow to deep. Shallow insights are things the team knew before the project started. Deep insights expose the problem in a brand new light. \r\n\r\nPlot “disruptiveness of concept” on the y-axis, from incremental to breakthrough. Incremental concepts are simple builds on existing products or services (or things the organization has tried before). Breakthrough concepts have never been tried—they might even be new to the industry. \r\n\r\nIt’s easier to move a deep insight up to breakthrough territory than it is to move a shallow insight. When reviewing your portfolio, ask “which concepts address problems we’ve never considered?” These concepts are easier to “Yes, And!” into breakthrough territory.\r\n'),
(137, 63, 'How to shoot video:', '', '1.	Know your intention. What’s the one thing you want your audience to leave with? \r\n\r\n2.	Get a tight frame of your subject at all times. \r\n\r\n3.	Be conscious of light sources and shadows on your subject. \r\n\r\n\r\n4.	Overshoot! Get more than you think you need. Editing is where the storytelling begins. Remember to get longer takes. They allow you some wiggle room for transitions. \r\n\r\n5.	Keep mic close to the subject (boom mic preferred). \r\n\r\n6.	Point mic away from undesired noise.\r\n'),
(138, 64, 'How to edit video:', '', 'To edit quickly and create compelling videos, follow these guidelines: \r\n\r\nDuring the process, ensure an audience will understand your visual narrative. Remember, it’s better to be clear than clever. \r\n\r\nMake an initial rough cut of the whole film. Block out the beginning, middle and end. \r\n\r\nKill the darlings. Remain focused on what will tell your story best. \r\n\r\nWhat you hear is equally important to what you see. Ensure any music compliments your visuals and doesn\'t distract. \r\n\r\nBefore exporting your video, know where it will live. If to be played off your computer, use minimal compression to ensure quality. For social media or video hosting sites, consult their listed guidelines.\r\n');
INSERT INTO `tbl_back_cards_header` (`back_cards_header_id`, `back_cards_header_frontId`, `back_cards_header_title`, `back_content_title`, `back_content`) VALUES
(139, 65, 'How to test:', '', 'Create authentic experiences for users to test your prototypes. '),
(140, 65, '', 'Learn more about your user. \r\n', 'Testing is another opportunity to build empathy through observation and engagement—often yielding unexpected insights. \r\n'),
(141, 65, '', 'Refine your prototypes and solutions. \r\n', 'Testing informs the next iterations of prototypes. Sometimes this means going back to the drawing board. \r\n'),
(142, 65, '', 'Test and refine your Point of View. \r\n\r\n', 'Testing may reveal that, not only did you get the solution wrong, but you also framed the problem incorrectly.'),
(143, 66, 'How to test with users:', 'Let your user experience the prototype. \r\n\r\n', 'Show don’t tell. Put your prototype in the user’s hands (or your user in the prototype) and give only the basic context they need to understand what to do. '),
(144, 66, '', 'Have them talk through their experience. \r\n', 'Use prompts. “Tell me what you’re thinking as you do this.” \r\n'),
(145, 66, '', 'Actively observe. \r\n\r\n', 'Don’t immediately “correct” your user. Watch how they use (and misuse) your prototype. '),
(146, 66, '', 'Follow up with questions. \r\n\r\n', 'This is often the most valuable part. “Show me why this would (not) work for you.” “Can you tell me how this made you feel?” “Why?” Answer questions with questions. “Well, what do you think that button does?”'),
(147, 67, 'How to prototype to decide:', '', 'If the team is stuck between multiple opinions, build out multiple prototypes (for agility purposes, limit the team to 3-5 prototypes). Develop models of potential design candidates. \r\n\r\nBe sure to distill the design problem down to discrete elements, isolating the variable you’re testing. \r\n\r\nBuild as quickly and low-resolution as possible. Then test your prototypes on the team, outsider peers, or, better yet, test your prototypes on real users. Be sure to capture feedback.\r\n'),
(148, 68, 'How to identify a variable:', '', 'Prototype with a purpose. Based on user needs and insights, identify one variable of your concept to flesh out and test. Then build a few iterations. Keep prototypes as low resolution as possible. \r\n\r\nRemember, a prototype doesn’t have to be, or even look like the solution. You might want to know how heavy a device should be. Create prototypes of varied weight, without making them operable. You may want to find out if users prefer delivery versus pick up. Build boxes for each service, without filling them. \r\n\r\nBy selecting one variable to test, you can bring resolution to that aspect of your concept and slide one step closer to a design solution.\r\n'),
(149, 69, 'How to create a Wizard of Oz prototype:\n', '', 'Determine what you want to test. Then figure out how to fake that functionality and still give users an authentic experience. \r\nYou can combine existing tools (tablets, email systems, Powerpoint) with human intervention to create the illusion of functionality. \r\nThe company Aardvark needed to test user reactions to their online interface for connecting people with questions to qualified people with answers. Instead of coding, they used an instant messaging system and team members behind the scenes to physically route questions and answers to the right people. \r\nWizard of Oz prototypes can be extended beyond the digital realm, to physical prototypes. You could prototype a vending machine without building the mechanics behind it—using a person hidden inside to deliver purchases.\r\n'),
(150, 70, 'How to use a feedback capture matrix:\n', '', 'Section off a blank page or whiteboard into quadrants. Draw a plus sign in the upper left quadrant, a delta sign in the upper right quadrant, a question mark in the lower left quadrant, and a light bulb in the lower right quadrant. \r\n\r\nFill in the matrix as you give or receive feedback. Place things one likes or finds notable in the upper left (plus sign). Constructive criticism goes in the upper right (delta sign). Questions raised go in the lower left (question mark). And new ideas spurred go in the lower right (light bulb). If you’re giving feedback, strive to give input in each quadrant (especially the upper two: “likes” and “wishes”).\r\n'),
(151, 71, 'How to tell stories:', '', 'Follow the structure of a story spine to flesh out the narrative arc of your user-centered story: \r\n\r\nOnce upon a time... \r\nAnd every day... \r\nUntil one day... \r\nBecause of that... \r\nAnd because of that... \r\nUntil finally... \r\nAnd ever since that day... \r\nAnd the moral is... \r\n\r\nRemember, your user is the hero of your story, not your concept. Your concept contributes to the transformation of your character, and to the relief of dramatic tension, but it’s not the main character. \r\nOnce you’ve finished your story, remove the stems from the story spine prompts. Don’t say “once upon a time,” for example, when you tell your story to an actual audience. Just like scaffolding for painters, the story spine prompts get removed once they serve their purpose. What remains should be a believable, compelling user story.\r\n'),
(152, 72, 'How to use I like, I wish, what if:\n', '', ''),
(153, 73, 'How to gather empathetic data:\n', '', 'Take your prototype (it doesn’t need to be perfect, just usable) and place it in a context where your users currently experience your product or service. Bonus points if you can find a setting that allows users to test the current offering and the new offering. \r\n\r\nExtra bonus points if that setting is low pressure, so customers feel comfortable giving open and honest feedback. For example, d.school alum, Bill Pacheco, tested exercise machine prototypes in a real gym with actual users. \r\n\r\nDuring your test, capture usage counts, quotes, and reactions via notes or video. Create a sizable data sample to support and refine your prototype. \r\n\r\nPro tip: bring your decision makers along to watch and interact with users.\r\n'),
(154, 74, 'How to review your portfolio:\n', '', 'Create a simple 2x2 matrix. Plot “depth of insight” on the x-axis, from shallow to deep. Shallow insights are things the team knew before the project started. Deep insights expose the problem in a brand new light. \r\n\r\nPlot “disruptiveness of concept” on the y-axis, from incremental to breakthrough. Incremental concepts are simple builds on existing products or services (or things the organization has tried before). Breakthrough concepts have never been tried—they might even be new to the industry. \r\n\r\nIt’s easier to move a deep insight up to breakthrough territory than it is to move a shallow insight. When reviewing your portfolio, ask “which concepts address problems we’ve never considered?” These concepts are easier to “Yes, And!” into breakthrough territory.\r\n'),
(155, 75, 'How to shoot video:', '', '1.	Know your intention. What’s the one thing you want your audience to leave with? \r\n\r\n2.	Get a tight frame of your subject at all times. \r\n\r\n3.	Be conscious of light sources and shadows on your subject. \r\n\r\n\r\n4.	Overshoot! Get more than you think you need. Editing is where the storytelling begins. Remember to get longer takes. They allow you some wiggle room for transitions. \r\n\r\n5.	Keep mic close to the subject (boom mic preferred). \r\n\r\n6.	Point mic away from undesired noise.\r\n'),
(156, 76, 'How to edit video:', '', 'To edit quickly and create compelling videos, follow these guidelines: \r\n\r\nDuring the process, ensure an audience will understand your visual narrative. Remember, it’s better to be clear than clever. \r\n\r\nMake an initial rough cut of the whole film. Block out the beginning, middle and end. \r\n\r\nKill the darlings. Remain focused on what will tell your story best. \r\n\r\nWhat you hear is equally important to what you see. Ensure any music compliments your visuals and doesn\'t distract. \r\n\r\nBefore exporting your video, know where it will live. If to be played off your computer, use minimal compression to ensure quality. For social media or video hosting sites, consult their listed guidelines.\r\n');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coach_detail`
--

CREATE TABLE `tbl_coach_detail` (
  `coach_detail_id` int(11) NOT NULL,
  `coach_detail_coachheaderId` int(11) NOT NULL,
  `coach_detail_content` text NOT NULL,
  `coach_detail_renarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coach_detail`
--

INSERT INTO `tbl_coach_detail` (`coach_detail_id`, `coach_detail_coachheaderId`, `coach_detail_content`, `coach_detail_renarks`) VALUES
(1, 6, '1', 'Coach Details');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_coach_header`
--

CREATE TABLE `tbl_coach_header` (
  `coach_header_id` int(11) NOT NULL,
  `coach_header_moduleId` int(11) NOT NULL,
  `coach_header_duration` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_coach_header`
--

INSERT INTO `tbl_coach_header` (`coach_header_id`, `coach_header_moduleId`, `coach_header_duration`) VALUES
(1, 1, '2 Weeks'),
(5, 9, '1'),
(6, 10, '1');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_department`
--

CREATE TABLE `tbl_department` (
  `department_id` int(11) NOT NULL,
  `department_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_department`
--

INSERT INTO `tbl_department` (`department_id`, `department_name`) VALUES
(1, 'College of Information Technology');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_folder`
--

CREATE TABLE `tbl_folder` (
  `folder_id` int(11) NOT NULL,
  `folder_name` varchar(50) NOT NULL,
  `folder_date` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

-- --------------------------------------------------------

--
-- Table structure for table `tbl_front_cards`
--

CREATE TABLE `tbl_front_cards` (
  `cards_id` int(11) NOT NULL,
  `cards_masterId` int(11) NOT NULL,
  `cards_title` varchar(255) NOT NULL,
  `cards_content` text NOT NULL,
  `cards_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_front_cards`
--

INSERT INTO `tbl_front_cards` (`cards_id`, `cards_masterId`, `cards_title`, `cards_content`, `cards_image`) VALUES
(1, 1, 'Empathize', 'Empathy is the foundation of human-centered design. The problems you’re trying to solve are rarely your own, they’re those of particular users. Build empathy for your users by learning their values. To empathize, you:\nObserve.\nView users and their behavior in the context of their lives.\n\nEngage.\nInteract with and interview users through both scheduled and short ‘intercept’ encounters.\n\nImmerse.\nWear your users’ shoes. Experience what they experience for a mile or two.\n', ''),
(2, 1, 'Assume a beginner’s mindset', 'You carry your own experiences, understanding, and expertise. Your unique perspective is an incredibly valuable asset to bring to any design challenge. At the same time, your viewpoint carries assumptions and personal beliefs. Your preconceived notions may, in fact, be misconceptions or stereotypes, and can limit the amount of real empathy you can build. Assume a beginner’s mindset in order to put aside biases and approach a design challenge with fresh eyes.', 'Assumeabeginnersmindset.png'),
(3, 1, 'What? How? Why?', 'What? How? Why? is a tool to help you reach deeper levels of observation. It’s a simple scaffolding to move you from concrete observations of a particular situation to the more abstract emotions and motives at play behind the scenes. \r\nThis is particularly powerful when analyzing photos that your team took in the field, both for synthesis purposes, and to direct your team to future areas of need-finding.\r\n', 'WhatHowWhy.png'),
(4, 1, 'Interview Preparation\r\n', 'Time with users is precious so you have to make the most of it. You should definitely allow room for spontaneous user-guided conversations, but you should never abandon your responsibility to prepare for interviews. Especially when following up with users (after testing), it’s essential to plan your discussions ahead of time. You may not get to every question you prepare, but you should come in with a plan for engagement. ', 'InterviewPreparation.png'),
(5, 1, 'Interview for Empathy\r\n', 'We interview to gain empathy. By interviewing users you will begin to better understand a person’s behaviors, choices, and needs. We suggest interviewing in-person and in pairs so that one person can converse while the other captures.', 'InterviewforEmpathy.png'),
(6, 1, 'Extreme Users', 'As a designer, you engage users (people!) to understand their needs and gain insights into their lives. You also draw inspiration from their work-arounds and frameworks. When you speak with and observe extreme users, their amplified needs and work-arounds come to light. This helps reveal meaningful needs that may not pop when engaging with the middle of the bell curve. And the needs of extreme users often coincide with the needs of a wider population.', 'ExtremeUsers.png'),
(7, 1, 'Story Share-and-Capture\r\n', 'After interviewing people, bring your team together to share stories that you heard. A story share serves a few purposes. First, it allows team members to get up to speed on what others gathered in the field. Even if everyone was present for the fieldwork, comparing how each person experienced it is valuable. Second, in listening and probing for more information, team members tend to draw out nuance and meaning that wasn’t initially realized. This starts the synthesis process.', 'StoryShareandCapture.png'),
(8, 1, 'Journey Map', 'A journey map is a tool to dissect a process into its moving parts to illuminate areas of potential insights. Don\'t forget the details when gaining empathy and understanding for a user and their experience. Creating a journey map is an excellent way to systematically think about those detailed steps or milestones. Journey maps can be used for your own empathy work, or to communicate your findings to others.', 'JourneyMap.png'),
(9, 1, 'Prototype for Empathy\r\n', 'When you’re creating a prototype, consider the people who will be interacting with this object/experience. Develop the prototype or design the experience, specifically to gain empathy. You don’t necessarily need to seek solutions when testing prototypes with users. \r\nIn the same way a solution-driven prototype reveals new information about the idea you’re testing, an empathy seeking prototype helps you gain understanding about people and the space you\'re designing for.	\r\n', 'PrototypeforEmpathy.png'),
(10, 1, 'User-Driven Prototyping\r\n', 'User-driven prototypes are created by users, rather than developed by you. When users create aspects of the design themselves, they reveal assumptions and desires that otherwise remain unmined. \r\nYour goal is not to integrate their ideas into your design, but to better understand their thinking and reveal undetected needs and insights.\r\n', 'UserDrivenPrototyping.png'),
(11, 1, 'Storytelling', 'A well-told story—filled with rich detail, surprising meaning, and universal emotion affects both the brain and the heart. Stories are a great way to connect people with ideas, at a human level. If you want to make an impression on your audience (teammates, clients, investors), tell a great user-centered story.', 'Storytelling.png'),
(12, 1, 'I Like, I Wish, What If', 'As a designer, you must rely on personal communication and, particularly, feedback, during design work. Colleagues give feedback on design frameworks. Users give feedback on solution concepts. I like, I wish, What if (IL/IW/WI) is a simple tool to encourage open feedback.', 'IlikeIwishWhatIf.png'),
(13, 1, 'Empathetic Data ', 'The difficulty with many new ideas is that they’re hard to empirically prove, leaving key decision makers no basis for comparison. The good news is, designers can create data through simple prototyping. \r\nIf you’re struggling to get buy-in from key stakeholders due to lack of hard data, consider building an empathetic data set, derived from real user prototype testing.\r\n', 'EmpatheticData.png'),
(14, 1, 'Review Your Portfolio', 'Sustaining/incremental innovations and disruptive innovations are what make up your innovation portfolio. Reviewing where various concepts fall in the portfolio helps you understand where to focus your energy.\r\n\r\n', 'ReviewYourPortfolio.png'),
(15, 1, 'Empathy Probe', 'It can be tricky to elicit emotion rich conversations with users (sometimes total strangers!). It can also be tough to decide where to direct early empathy interviews. Empathy probes help reduce friction by giving users something to do and create space for them to speak their mind. It also gives you plenty of opportunity to observe users before choosing where to engage more deeply.', 'EmpathyProbe.png'),
(16, 1, 'Analogous Empathy', 'When teams (particularly intact teams) struggle to innovate it’s often because they neglect to look outside their organization for inspiration. Unlike competitive research, analogies push teams to consider radically different industries and offerings to apply a fresh perspective on a familiar challenge.', 'AnalogousEmpathy.png'),
(17, 1, 'Shooting Video', 'Video is a powerful medium for communicating ideas, insights and stories. The frame is your medium—be aggressive. If it’s not in the frame, it doesn’t exist.', 'ShootingVideo.png'),
(18, 1, 'Editing Video', 'At its core, editing is storytelling. The medium where your narrative comes to life. Being meticulous in your editing is crucial to delivering the best, clearest narrative.', 'EditingVideo.png'),
(19, 2, 'Define', 'The define mode is when you unpack your empathy findings into needs and insights and scope a meaningful challenge. Based on your understanding of users and their environments, come up with an actionable problem statement: your Point Of View. \r\nMore than simply defining the problem, your Point of View is a unique design vision that is framed by your specific users. \r\nUnderstanding the meaningful challenge at hand, and the user insights you can leverage, is fundamental to creating a successful solution.\r\n', ''),
(20, 2, 'Story Share-and-Capture\r\n', 'After interviewing people, bring your team together to share stories that you heard. A story share serves a few purposes. First, it allows team members to get up to speed on what others gathered in the field. Even if everyone was present for the fieldwork, comparing how each person experienced it is valuable. Second, in listening and probing for more information, team members tend to draw out nuance and meaning that wasn’t initially realized. This starts the synthesis process.', 'StoryShareandCapture.png'),
(21, 2, 'Journey Map', 'A journey map is a tool to dissect a process into its moving parts to illuminate areas of potential insights. Don\'t forget the details when gaining empathy and understanding for a user and their experience. Creating a journey map is an excellent way to systematically think about those detailed steps or milestones. Journey maps can be used for your own empathy work, or to communicate your findings to others.', 'JourneyMap.png'),
(22, 2, 'Powers of Ten ', 'Powers of Ten is a reframing technique used as a synthesis or ideation method. It allows your design team to consider the challenge at hand through frames of various magnitudes.', 'PowersofTen.png'),
(23, 2, '2x2 Matrix', 'A 2x2 matrix is a tool to scaffold information about users and your design space to reveal relationships. The hope is to uncover insights or areas to explore more deeply. A 2x2 matrix is also a great way to visually communicate a relationship you want to convey to others.', '2x2Matrix.png'),
(24, 2, 'Why-How Laddering', 'Use why-how laddering to flesh out varying user needs and find a middle ground that’s both meaningful and actionable.\r\nAs a general rule, asking “why” yields abstract statements and asking “how” yields specific statements. Often times abstract statements are more meaningful, but not as actionable. The opposite is true of more specific statements.\r\n', 'WhyHowLaddering.png'),
(25, 2, 'Point of View (POV)', 'A Point of View framework helps outline your design challenge into an actionable problem statement so that you can begin brainstorming solutions. Most importantly, your POV anchors your design thinking project and helps you to articulate your challenge meaningfully.', 'PointofView.png'),
(26, 2, 'Design Guidelines', 'Design guidelines, also known as design directives, are written statements that articulate a strategy for how you will solve your design challenge, independent of a specific solution. They translate your findings—user needs and insights— into actionable design directives.', 'DesignGuidelines.png'),
(27, 2, '“How Might We” Questions\r\n', '“How might we” (HMW) questions are short questions that launch ideation. They’re broad enough to include a wide range of solutions but narrow enough to impose helpful boundaries. \r\n\r\nBetween the too narrow “HMW create an ice cream cone that doesn’t drip” and the too broad “HMW redesign dessert”, is the properly scoped “HMW redesign ice cream to be more portable.”\r\n', 'HowMightWeQuestions.png'),
(28, 2, 'Storytelling', 'A well-told story—filled with rich detail, surprising meaning, and universal emotion affects both the brain and the heart. Stories are a great way to connect people with ideas, at a human level. If you want to make an impression on your audience (teammates, clients, investors), tell a great user-centered story.', 'Storytelling.png'),
(29, 2, 'I Like, I Wish, What If', 'As a designer, you must rely on personal communication and, particularly, feedback, during design work. Colleagues give feedback on design frameworks. Users give feedback on solution concepts. I like, I wish, What if (IL/IW/WI) is a simple tool to encourage open feedback.', 'IlikeIwishWhatIf.png'),
(30, 2, 'Review Your Portfolio', 'Sustaining/incremental innovations and disruptive innovations are what make up your innovation portfolio. Reviewing where various concepts fall in the portfolio helps you understand where to focus your energy.', 'ReviewYourPortfolio.png'),
(31, 2, 'Describe Your Concept\r\n', 'Many brainstorms end with a team realizing they don’t fully understand the idea they selected to act on. The Describe Your Concept tool helps you distill down what resonated with the team from the original concept, and understand exactly what they need to create during prototyping.', 'DescribeYourConcept.png'),
(32, 2, 'Surprise-to-Insights Leap\r\n', 'Design teams often have trouble articulating the “nuggets” they discover during empathy work. The Surprise-to-Insights leap helps teams get out of their heads and explore various interpretations of surprising user behavior.', 'SuurprisetoInsightsLeap.png'),
(33, 2, 'Shooting Video', 'Video is a powerful medium for communicating ideas, insights and stories. The frame is your medium—be aggressive. If it’s not in the frame, it doesn’t exist.', 'ShootingVideo.png'),
(34, 2, 'Editing Video', 'At its core, editing is storytelling. The medium where your narrative comes to life. Being meticulous in your editing is crucial to delivering the best, clearest narrative.', 'EditingVideo.png'),
(35, 3, 'Ideate', 'Ideate is the mode in which you generate radical design alternatives. Ideation is a process of “going wide” in terms of concepts and outcomes—a mode of “flaring” instead of “focus”. The goal of ideation is to explore a wide solution space—both a large quantity and broad diversity of ideas. From this vast repository of ideas, you can build prototypes to test with users.', ''),
(36, 3, 'Powers of Ten ', 'Powers of Ten is a reframing technique used as a synthesis or ideation method. It allows your design team to consider the challenge at hand through frames of various magnitudes.', 'PowersofTen.png'),
(37, 3, '“How Might We” Questions\r\n', '“How might we” (HMW) questions are short questions that launch ideation. They’re broad enough to include a wide range of solutions but narrow enough to impose helpful boundaries. \r\n\r\nBetween the too narrow “HMW create an ice cream cone that doesn’t drip” and the too broad “HMW redesign dessert”, is the properly scoped “HMW redesign ice cream to be more portable.”\r\n', 'HowMightWeQuestions.png'),
(38, 3, 'Stoke', 'Stoke activities loosen up and energize teams—both mentally and physically. Use stoke activities to wake up in the morning, launch a meeting, or begin a brainstorm. They should be brief and highly active.', 'Stoke.png'),
(39, 3, 'Brainstorming', 'Brainstorming conjures tons of ideas all at once. A brainstorm is a distinct segment of time when you amp up the generative part of your brain and turn down the evaluative part. The intention is to leverage the collective thinking of the group. Brainstorming can be used throughout the design process: to plan empathy work, to assess products and services, and to come up with design solutions.', 'Brainstorming.png'),
(40, 3, 'Facilitate a Brainstorm\r\n', 'Good facilitation is key to a generative brainstorm. Brainstorming spawns many, wide-ranging (and sometimes left field) ideas. A good facilitator sets the stage for open, active, and constructive engagement.\r\n', 'FacilitateaBrainstorm.png'),
(41, 3, 'Brainstorm selection', 'Your brainstorm should generate many, wide-ranging ideas. That’s the easy part. The hard part is selecting which ideas to act on. Brainstorm selection may be straight forward for some brainstorms (simply pick a few standout ideas), but selecting design solutions may take more deliberation. \r\n\r\nDon’t pick just one and don’t settle on safe choices. Select a range of ideas to carry forward into prototyping, aiming to preserve the breadth of solutions generated by the group.\r\n', 'BrainstormSelection.png'),
(42, 3, 'Impose Constraints', 'It’s a bit counterintuitive, yet imposing constraints (with intention) can actually increase creative potential. \r\n\r\nTry it: \r\n\r\nThink of as many silver things as you can in ten seconds.\r\n Now think of silver things in your kitchen. \r\n\r\nWhich prompt sparked more ideas?\r\n', 'ImposeConstraints.png'),
(43, 3, 'Storytelling', 'A well-told story—filled with rich detail, surprising meaning, and universal emotion affects both the brain and the heart. Stories are a great way to connect people with ideas, at a human level. If you want to make an impression on your audience (teammates, clients, investors), tell a great user-centered story.', 'Storytelling.png'),
(44, 3, 'I Like, I Wish, What If', 'As a designer, you must rely on personal communication and, particularly, feedback, during design work. Colleagues give feedback on design frameworks. Users give feedback on solution concepts. I like, I wish, What if (IL/IW/WI) is a simple tool to encourage open feedback.', 'IlikeIwishWhatIf.png'),
(45, 3, 'Review Your Portfolio', 'Sustaining/incremental innovations and disruptive innovations are what make up your innovation portfolio. Reviewing where various concepts fall in the portfolio helps you understand where to focus your energy.', 'ReviewYourPortfolio.png'),
(46, 3, 'Yes, And! Brainstorm', 'Brainstorming can often feel frenetic and irrational. It can also leave less extroverted folks feeling left out. The Yes, And! brainstorm provides a little structure for guiding brainstorms, and creating space for each team member to contribute and build on others’ ideas.', 'YesAndBrainstorm.png'),
(47, 3, 'Shooting Video', 'Video is a powerful medium for communicating ideas, insights and stories. The frame is your medium—be aggressive. If it’s not in the frame, it doesn’t exist.', 'ShootingVideo.png'),
(48, 3, 'Editing Video', 'At its core, editing is storytelling. The medium where your narrative comes to life. Being meticulous in your editing is crucial to delivering the best, clearest narrative.', 'EditingVideo.png'),
(49, 4, 'Prototype', 'Prototyping gets ideas out of your head and into the world. A prototype can be anything that takes a physical form—a wall of post-its, a role-playing activity, an object. In early stages, keep prototypes inexpensive and low resolution to learn quickly and explore possibilities. \r\nPrototypes are most successful when people (the design team, users, and others) can experience and interact with them. They’re a great way to start a conversation. What you learn from interactions with prototypes drives deeper empathy and shapes successful solutions.\r\n', ''),
(50, 4, 'Impose Constraints', 'It’s a bit counterintuitive, yet imposing constraints (with intention) can actually increase creative potential. \r\n\r\nTry it: \r\n\r\nThink of as many silver things as you can in ten seconds.\r\n Now think of silver things in your kitchen. \r\n\r\nWhich prompt sparked more ideas?\r\n', 'ImposeConstraints.png'),
(51, 4, 'Prototype for Empathy\r\n', 'When you’re creating a prototype, consider the people who will be interacting with this object/experience. Develop the prototype or design the experience, specifically to gain empathy. You don’t necessarily need to seek solutions when testing prototypes with users. \r\nIn the same way a solution-driven prototype reveals new information about the idea you’re testing, an empathy seeking prototype helps you gain understanding about people and the space you\'re designing for.\r\n', 'PrototypeforEmpathy.png'),
(52, 4, 'Improvise to Life', 'Teams often get stuck in \"analysis paralysis\" when deciding what to build for user testing. Improvising your idea to life is a tool to jump-start your team into action.', 'ImprovisetoLife.png'),
(53, 4, 'Scenes/Props/Roles', 'A great way to prepare to test your prototype in the field (with real users) is to use the Scenes/Props/Roles tool. This improv-inspired tool helps you understand where and how you will test your prototype, and the roles of each team member who join you in the field.', 'ScenesPropsRoles.png'),
(54, 4, 'Testing with Users', 'Testing with users is a fundamental part of human-centered design. You test with users to not only refine your solution, but to better understand the people you’re designing for. When you test prototypes, consider both what you can learn about your solution and what you can learn about your user—you can always use more empathy.', 'TestingwithUsers.png'),
(55, 4, 'Prototype to Decide', 'During the design process, it can be unclear how to proceed forward, particularly when team members have mixed opinions. The best way to resolve team conflicts about design elements is to prototype and evaluate them with users. If a prototype is received well, it’s a good sign it’s worth pursuing further.', 'PrototypetoDecide.png'),
(56, 4, 'Identify a Variable', 'Rather than prototype a complete mockup of a solution, it’s more productive to single out and test a specific variable. Identifying a variable not only saves time and money (you don’t need to create all facets of a complex solution), it gives you the opportunity to test multiple prototypes, each varying in the one property. This encourages the user to make nuanced comparisons between prototypes and choose one option over another.', 'IdentifyaVariable.png'),
(57, 4, 'User-Driven Prototyping\r\n', 'User-driven prototypes are created by users, rather than developed by you. When users create aspects of the design themselves, they reveal assumptions and desires that otherwise remain unmined. \r\nYour goal is not to integrate their ideas into your design, but to better understand their thinking and reveal undetected needs and insights.\r\n', 'UserDrivenPrototyping.png'),
(58, 4, 'Wizard of Oz Prototyping\r\n', 'A wizard of Oz prototype fakes functionality that you want to test with users, saving you the time and money of actually creating it. Wizard of Oz prototypes often refer to prototypes of digital systems, in which the user thinks the response is computer-driven, when in fact it’s human-controlled.', 'WizardofOzPrototyping.png'),
(59, 4, 'Storytelling', 'A well-told story—filled with rich detail, surprising meaning, and universal emotion affects both the brain and the heart. Stories are a great way to connect people with ideas, at a human level. If you want to make an impression on your audience (teammates, clients, investors), tell a great user-centered story.', 'Storytelling.png'),
(60, 4, 'I Like, I Wish, What If', 'As a designer, you must rely on personal communication and, particularly, feedback, during design work. Colleagues give feedback on design frameworks. Users give feedback on solution concepts. I like, I wish, What if (IL/IW/WI) is a simple tool to encourage open feedback.', 'IlikeIwishWhatIf.png'),
(61, 4, 'Empathetic Data ', 'The difficulty with many new ideas is that they’re hard to empirically prove, leaving key decision makers no basis for comparison. The good news is, designers can create data through simple prototyping. \r\nIf you’re struggling to get buy-in from key stakeholders due to lack of hard data, consider building an empathetic data set, derived from real user prototype testing.\r\n', 'EmpatheticData.png'),
(62, 4, 'Review Your Portfolio', 'Sustaining/incremental innovations and disruptive innovations are what make up your innovation portfolio. Reviewing where various concepts fall in the portfolio helps you understand where to focus your energy.', 'ReviewYourPortfolio.png'),
(63, 4, 'Shooting Video', 'Video is a powerful medium for communicating ideas, insights and stories. The frame is your medium—be aggressive. If it’s not in the frame, it doesn’t exist.', 'ShootingVideo.png'),
(64, 4, 'Editing Video', 'At its core, editing is storytelling. The medium where your narrative comes to life. Being meticulous in your editing is crucial to delivering the best, clearest narrative.', 'EditingVideo.png'),
(65, 5, 'Test', 'Testing is your chance to gather feedback, refine solutions, and continue to learn about your users. The test mode is an iterative mode in which you place low-resolution prototypes in the appropriate context of your user’s life. Prototype as if you know you’re right, but test as if you know you’re wrong.', ''),
(66, 5, 'Testing with Users', 'Testing with users is a fundamental part of human-centered design. You test with users to not only refine your solution, but to better understand the people you’re designing for. When you test prototypes, consider both what you can learn about your solution and what you can learn about your user—you can always use more empathy.', 'TestingwithUsers.png'),
(67, 5, 'Prototype to Decide', 'During the design process, it can be unclear how to proceed forward, particularly when team members have mixed opinions. The best way to resolve team conflicts about design elements is to prototype and evaluate them with users. If a prototype is received well, it’s a good sign it’s worth pursuing further.', 'PrototypetoDecide.png'),
(68, 5, 'Identify a Variable', 'Rather than prototype a complete mockup of a solution, it’s more productive to single out and test a specific variable. Identifying a variable not only saves time and money (you don’t need to create all facets of a complex solution), it gives you the opportunity to test multiple prototypes, each varying in the one property. This encourages the user to make nuanced comparisons between prototypes and choose one option over another.', 'IdentifyaVariable.png'),
(69, 5, 'Wizard of Oz Prototyping\r\n', 'A wizard of Oz prototype fakes functionality that you want to test with users, saving you the time and money of actually creating it. Wizard of Oz prototypes often refer to prototypes of digital systems, in which the user thinks the response is computer-driven, when in fact it’s human-controlled.', 'WizardofOzPrototyping.png'),
(70, 5, 'Feedback Capture Matrix\r\n', 'Feedback capture matrices facilitate real-time capture of feedback on presentations and prototypes. You can use a feedback capture matrix either to give feedback on progress within the design team or to capture user feedback. The matrix itself arranges thoughts and ideas into four categories for easy assessment.', 'FeedbackCaptureMatrix.png'),
(71, 5, 'Storytelling', 'A well-told story—filled with rich detail, surprising meaning, and universal emotion affects both the brain and the heart. Stories are a great way to connect people with ideas, at a human level. If you want to make an impression on your audience (teammates, clients, investors), tell a great user-centered story.', 'Storytelling.png'),
(72, 5, 'I Like, I Wish, What If', 'As a designer, you must rely on personal communication and, particularly, feedback, during design work. Colleagues give feedback on design frameworks. Users give feedback on solution concepts. I like, I wish, What if (IL/IW/WI) is a simple tool to encourage open feedback.', 'IlikeIwishWhatIf.png'),
(73, 5, 'Empathetic Data', 'The difficulty with many new ideas is that they’re hard to empirically prove, leaving key decision makers no basis for comparison. The good news is, designers can create data through simple prototyping. \r\nIf you’re struggling to get buy-in from key stakeholders due to lack of hard data, consider building an empathetic data set, derived from real user prototype testing.\r\n', 'EmpatheticData.png'),
(74, 5, 'Review Your Portfolio', 'Sustaining/incremental innovations and disruptive innovations are what make up your innovation portfolio. Reviewing where various concepts fall in the portfolio helps you understand where to focus your energy.', 'ReviewYourPortfolio.png'),
(75, 5, 'Shooting Video', 'Video is a powerful medium for communicating ideas, insights and stories. The frame is your medium—be aggressive. If it’s not in the frame, it doesn’t exist.', 'ShootingVideo.png'),
(76, 5, 'Editing Video', 'At its core, editing is storytelling. The medium where your narrative comes to life. Being meticulous in your editing is crucial to delivering the best, clearest narrative.\r\n\r\n', 'EditingVideo.png');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_instruction`
--

CREATE TABLE `tbl_instruction` (
  `instruction_id` int(11) NOT NULL,
  `instruction_modulesId` int(11) NOT NULL,
  `instruction_content` text NOT NULL,
  `instruction_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_instruction`
--

INSERT INTO `tbl_instruction` (`instruction_id`, `instruction_modulesId`, `instruction_content`, `instruction_remarks`) VALUES
(1, 1, 'What instructions will I give my students?', ''),
(2, 66, '1', 'Instruction'),
(3, 4, 'YAWA\n', 'Instruction'),
(4, 4, 'YAWA\n', 'Instruction'),
(5, 5, '121212', 'Instruction'),
(6, 6, 'wala raopud', 'Instruction'),
(7, 7, '121', 'Instruction'),
(8, 8, 'asdcas', 'Instruction'),
(9, 9, '1', 'Instruction'),
(10, 10, '1', 'Instruction');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_module_master`
--

CREATE TABLE `tbl_module_master` (
  `module_master_id` int(11) NOT NULL,
  `module_master_name` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_module_master`
--

INSERT INTO `tbl_module_master` (`module_master_id`, `module_master_name`) VALUES
(1, 'Empathize'),
(2, 'Define'),
(3, 'Ideate'),
(4, 'Prototype'),
(5, 'Test');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_outputs`
--

CREATE TABLE `tbl_outputs` (
  `outputs_id` int(11) NOT NULL,
  `outputs_moduleId` int(11) NOT NULL,
  `outputs_content` text NOT NULL,
  `outputs_remarks` text NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_outputs`
--

INSERT INTO `tbl_outputs` (`outputs_id`, `outputs_moduleId`, `outputs_content`, `outputs_remarks`) VALUES
(1, 1, 'What are the expected outputs?', ''),
(2, 62, 'wala pa', 'Output'),
(3, 66, '1', 'Output'),
(4, 4, 'BUSET', 'Output'),
(5, 5, '212', 'Output'),
(6, 6, 'yawabasd', 'Output'),
(7, 7, '21', 'Output'),
(8, 8, 'acdas', 'Output'),
(9, 9, '1', 'Output'),
(10, 10, '1', 'Output');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project`
--

CREATE TABLE `tbl_project` (
  `project_id` int(11) NOT NULL,
  `project_userId` int(11) NOT NULL,
  `project_subject_code` varchar(255) NOT NULL,
  `project_subject_description` varchar(255) NOT NULL,
  `project_title` varchar(255) NOT NULL,
  `project_description` varchar(255) NOT NULL,
  `project_start_date` date NOT NULL,
  `project_end_date` date NOT NULL,
  `before_schedule_studentWorkshop` date NOT NULL,
  `start_schedule_studentWorkshop` date NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_project`
--

INSERT INTO `tbl_project` (`project_id`, `project_userId`, `project_subject_code`, `project_subject_description`, `project_title`, `project_description`, `project_start_date`, `project_end_date`, `before_schedule_studentWorkshop`, `start_schedule_studentWorkshop`) VALUES
(1, 1, 'ACSCAS', 'ACSDAS', 'ASDACSAD', 'ACSDAS', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(2, 1, 'ASDC', 'ASD', 'DCAS', 'ASD', '2024-09-17', '2024-09-24', '2024-09-17', '2024-09-17'),
(3, 1, 'ASDC', 'ASD', 'DCAS', 'ASD', '2024-09-17', '2024-09-24', '2024-09-17', '2024-09-17'),
(4, 1, 'PISTE', 'HAHAHA ', 'YAWA NA CODE', 'HAHAHA ', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(5, 1, 'PISTE', 'HAHAHA ', 'YAWA NA CODE', 'HAHAHA ', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(6, 1, 'dacs', 'acasdc', 'asdas', 'acasdc', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(7, 1, 'bilar', 'w23', 'kekert', 'w23', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(8, 1, 'asvdasd', 'vasdv', 'sdvas', 'vasdv', '2024-09-28', '2024-09-28', '2024-09-17', '2024-09-17'),
(9, 1, 'cascas', 'dcasc', 'scdas', 'dcasc', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(10, 1, 'vasv', '1', 'as', '1', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17'),
(11, 1, 'cdascas', 'dcasc', 'asca', 'dcasc', '2024-09-17', '2024-09-17', '2024-09-17', '2024-09-17');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_cards`
--

CREATE TABLE `tbl_project_cards` (
  `project_cards_id` int(11) NOT NULL,
  `project_cards_modulesId` int(11) NOT NULL,
  `project_cards_cardId` int(11) NOT NULL,
  `project_cards_remarks` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_project_cards`
--

INSERT INTO `tbl_project_cards` (`project_cards_id`, `project_cards_modulesId`, `project_cards_cardId`, `project_cards_remarks`) VALUES
(2, 1, 23, '1'),
(7, 4, 24, ''),
(8, 4, 23, ''),
(9, 5, 7, ''),
(10, 5, 5, ''),
(11, 6, 19, ''),
(12, 6, 20, ''),
(13, 7, 25, ''),
(14, 7, 21, ''),
(15, 8, 1, ''),
(16, 8, 2, ''),
(17, 8, 3, ''),
(18, 9, 8, ''),
(19, 9, 6, ''),
(20, 10, 9, '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_project_modules`
--

CREATE TABLE `tbl_project_modules` (
  `project_modules_id` int(11) NOT NULL,
  `project_modules_projectId` int(11) NOT NULL,
  `project_modules_masterId` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_project_modules`
--

INSERT INTO `tbl_project_modules` (`project_modules_id`, `project_modules_projectId`, `project_modules_masterId`) VALUES
(1, 1, 1),
(2, 2, 1),
(3, 3, 1),
(4, 4, 2),
(5, 6, 1),
(6, 7, 2),
(7, 8, 2),
(8, 9, 1),
(9, 10, 1),
(10, 11, 1);

-- --------------------------------------------------------

--
-- Table structure for table `tbl_role`
--

CREATE TABLE `tbl_role` (
  `role_id` int(11) NOT NULL,
  `role_name` varchar(50) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_role`
--

INSERT INTO `tbl_role` (`role_id`, `role_name`) VALUES
(1, 'Admin'),
(2, 'Instructor');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_school`
--

CREATE TABLE `tbl_school` (
  `school_id` int(11) NOT NULL,
  `school_name` varchar(255) NOT NULL,
  `school_place` text NOT NULL,
  `school_country` varchar(255) NOT NULL,
  `school_image` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_school`
--

INSERT INTO `tbl_school` (`school_id`, `school_name`, `school_place`, `school_country`, `school_image`) VALUES
(1, 'PHINMA Cagayan de Oro College', 'Max Y. Suniel St, Cagayan de Oro, 9000 Misamis Oriental', 'Philippines', '');

-- --------------------------------------------------------

--
-- Table structure for table `tbl_users`
--

CREATE TABLE `tbl_users` (
  `users_id` int(11) NOT NULL,
  `users_school_id` varchar(50) NOT NULL,
  `users_password` varchar(255) NOT NULL,
  `users_firstname` varchar(255) NOT NULL,
  `users_middlename` varchar(255) NOT NULL,
  `users_lastname` varchar(255) NOT NULL,
  `users_suffix` varchar(50) NOT NULL,
  `users_schoolId` int(11) NOT NULL,
  `users_departmantId` int(11) NOT NULL,
  `users_roleId` int(11) NOT NULL,
  `users_status` int(11) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_general_ci;

--
-- Dumping data for table `tbl_users`
--

INSERT INTO `tbl_users` (`users_id`, `users_school_id`, `users_password`, `users_firstname`, `users_middlename`, `users_lastname`, `users_suffix`, `users_schoolId`, `users_departmantId`, `users_roleId`, `users_status`) VALUES
(1, '1', '1', 'Joshua', 'Obrial', 'Abacahin', 'Jr.', 1, 1, 2, 1);

--
-- Indexes for dumped tables
--

--
-- Indexes for table `tbl_activities_details`
--
ALTER TABLE `tbl_activities_details`
  ADD PRIMARY KEY (`activities_details_id`),
  ADD KEY `activities_details_headerId` (`activities_details_headerId`);

--
-- Indexes for table `tbl_activities_header`
--
ALTER TABLE `tbl_activities_header`
  ADD PRIMARY KEY (`activities_header_id`),
  ADD KEY `activities_header_modulesId` (`activities_header_modulesId`);

--
-- Indexes for table `tbl_back_cards_details`
--
ALTER TABLE `tbl_back_cards_details`
  ADD PRIMARY KEY (`back_cards_details_id`),
  ADD KEY `back_cards_details_back_headerId` (`back_cards_details_headerId`),
  ADD KEY `back_cards_details_headerId` (`back_cards_details_headerId`);

--
-- Indexes for table `tbl_back_cards_header`
--
ALTER TABLE `tbl_back_cards_header`
  ADD PRIMARY KEY (`back_cards_header_id`),
  ADD KEY `back_cards_header_frontId` (`back_cards_header_frontId`);

--
-- Indexes for table `tbl_coach_detail`
--
ALTER TABLE `tbl_coach_detail`
  ADD PRIMARY KEY (`coach_detail_id`),
  ADD KEY `coach_detail_coachheaderId` (`coach_detail_coachheaderId`);

--
-- Indexes for table `tbl_coach_header`
--
ALTER TABLE `tbl_coach_header`
  ADD PRIMARY KEY (`coach_header_id`),
  ADD KEY `choach_header_moduleId` (`coach_header_moduleId`);

--
-- Indexes for table `tbl_department`
--
ALTER TABLE `tbl_department`
  ADD PRIMARY KEY (`department_id`);

--
-- Indexes for table `tbl_folder`
--
ALTER TABLE `tbl_folder`
  ADD PRIMARY KEY (`folder_id`);

--
-- Indexes for table `tbl_front_cards`
--
ALTER TABLE `tbl_front_cards`
  ADD PRIMARY KEY (`cards_id`),
  ADD KEY `cards_masterId` (`cards_masterId`);

--
-- Indexes for table `tbl_instruction`
--
ALTER TABLE `tbl_instruction`
  ADD PRIMARY KEY (`instruction_id`),
  ADD KEY `instruction_modulesId` (`instruction_modulesId`);

--
-- Indexes for table `tbl_module_master`
--
ALTER TABLE `tbl_module_master`
  ADD PRIMARY KEY (`module_master_id`);

--
-- Indexes for table `tbl_outputs`
--
ALTER TABLE `tbl_outputs`
  ADD PRIMARY KEY (`outputs_id`),
  ADD KEY `outputs_moduleId` (`outputs_moduleId`);

--
-- Indexes for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD PRIMARY KEY (`project_id`),
  ADD KEY `project_userid` (`project_userId`),
  ADD KEY `project_userId_2` (`project_userId`);

--
-- Indexes for table `tbl_project_cards`
--
ALTER TABLE `tbl_project_cards`
  ADD PRIMARY KEY (`project_cards_id`),
  ADD KEY `project_cards_modulesId` (`project_cards_modulesId`),
  ADD KEY `project_cards_cardId` (`project_cards_cardId`);

--
-- Indexes for table `tbl_project_modules`
--
ALTER TABLE `tbl_project_modules`
  ADD PRIMARY KEY (`project_modules_id`),
  ADD KEY `project_modules_projectId` (`project_modules_projectId`),
  ADD KEY `project_modules_masterId` (`project_modules_masterId`);

--
-- Indexes for table `tbl_role`
--
ALTER TABLE `tbl_role`
  ADD PRIMARY KEY (`role_id`);

--
-- Indexes for table `tbl_school`
--
ALTER TABLE `tbl_school`
  ADD PRIMARY KEY (`school_id`);

--
-- Indexes for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD PRIMARY KEY (`users_id`),
  ADD KEY `users_schoolId` (`users_schoolId`),
  ADD KEY `users_departmantId` (`users_departmantId`),
  ADD KEY `users_roleId` (`users_roleId`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `tbl_activities_details`
--
ALTER TABLE `tbl_activities_details`
  MODIFY `activities_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=53;

--
-- AUTO_INCREMENT for table `tbl_activities_header`
--
ALTER TABLE `tbl_activities_header`
  MODIFY `activities_header_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=60;

--
-- AUTO_INCREMENT for table `tbl_back_cards_details`
--
ALTER TABLE `tbl_back_cards_details`
  MODIFY `back_cards_details_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=5;

--
-- AUTO_INCREMENT for table `tbl_back_cards_header`
--
ALTER TABLE `tbl_back_cards_header`
  MODIFY `back_cards_header_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=157;

--
-- AUTO_INCREMENT for table `tbl_coach_detail`
--
ALTER TABLE `tbl_coach_detail`
  MODIFY `coach_detail_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_coach_header`
--
ALTER TABLE `tbl_coach_header`
  MODIFY `coach_header_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=7;

--
-- AUTO_INCREMENT for table `tbl_department`
--
ALTER TABLE `tbl_department`
  MODIFY `department_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_folder`
--
ALTER TABLE `tbl_folder`
  MODIFY `folder_id` int(11) NOT NULL AUTO_INCREMENT;

--
-- AUTO_INCREMENT for table `tbl_front_cards`
--
ALTER TABLE `tbl_front_cards`
  MODIFY `cards_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=77;

--
-- AUTO_INCREMENT for table `tbl_instruction`
--
ALTER TABLE `tbl_instruction`
  MODIFY `instruction_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_module_master`
--
ALTER TABLE `tbl_module_master`
  MODIFY `module_master_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=6;

--
-- AUTO_INCREMENT for table `tbl_outputs`
--
ALTER TABLE `tbl_outputs`
  MODIFY `outputs_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_project`
--
ALTER TABLE `tbl_project`
  MODIFY `project_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=12;

--
-- AUTO_INCREMENT for table `tbl_project_cards`
--
ALTER TABLE `tbl_project_cards`
  MODIFY `project_cards_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=21;

--
-- AUTO_INCREMENT for table `tbl_project_modules`
--
ALTER TABLE `tbl_project_modules`
  MODIFY `project_modules_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=11;

--
-- AUTO_INCREMENT for table `tbl_role`
--
ALTER TABLE `tbl_role`
  MODIFY `role_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=3;

--
-- AUTO_INCREMENT for table `tbl_school`
--
ALTER TABLE `tbl_school`
  MODIFY `school_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- AUTO_INCREMENT for table `tbl_users`
--
ALTER TABLE `tbl_users`
  MODIFY `users_id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=2;

--
-- Constraints for dumped tables
--

--
-- Constraints for table `tbl_activities_details`
--
ALTER TABLE `tbl_activities_details`
  ADD CONSTRAINT `tbl_activities_details_ibfk_1` FOREIGN KEY (`activities_details_headerId`) REFERENCES `tbl_activities_header` (`activities_header_id`);

--
-- Constraints for table `tbl_activities_header`
--
ALTER TABLE `tbl_activities_header`
  ADD CONSTRAINT `tbl_activities_header_ibfk_1` FOREIGN KEY (`activities_header_modulesId`) REFERENCES `tbl_project_modules` (`project_modules_id`);

--
-- Constraints for table `tbl_back_cards_header`
--
ALTER TABLE `tbl_back_cards_header`
  ADD CONSTRAINT `tbl_back_cards_header_ibfk_1` FOREIGN KEY (`back_cards_header_frontId`) REFERENCES `tbl_front_cards` (`cards_id`);

--
-- Constraints for table `tbl_coach_detail`
--
ALTER TABLE `tbl_coach_detail`
  ADD CONSTRAINT `tbl_coach_detail_ibfk_1` FOREIGN KEY (`coach_detail_coachheaderId`) REFERENCES `tbl_coach_header` (`coach_header_id`);

--
-- Constraints for table `tbl_coach_header`
--
ALTER TABLE `tbl_coach_header`
  ADD CONSTRAINT `tbl_coach_header_ibfk_1` FOREIGN KEY (`coach_header_moduleId`) REFERENCES `tbl_project_modules` (`project_modules_id`);

--
-- Constraints for table `tbl_front_cards`
--
ALTER TABLE `tbl_front_cards`
  ADD CONSTRAINT `tbl_front_cards_ibfk_1` FOREIGN KEY (`cards_masterId`) REFERENCES `tbl_module_master` (`module_master_id`);

--
-- Constraints for table `tbl_instruction`
--
ALTER TABLE `tbl_instruction`
  ADD CONSTRAINT `tbl_instruction_ibfk_1` FOREIGN KEY (`instruction_modulesId`) REFERENCES `tbl_project_modules` (`project_modules_id`);

--
-- Constraints for table `tbl_outputs`
--
ALTER TABLE `tbl_outputs`
  ADD CONSTRAINT `tbl_outputs_ibfk_1` FOREIGN KEY (`outputs_moduleId`) REFERENCES `tbl_project_modules` (`project_modules_id`);

--
-- Constraints for table `tbl_project`
--
ALTER TABLE `tbl_project`
  ADD CONSTRAINT `tbl_project_ibfk_1` FOREIGN KEY (`project_userId`) REFERENCES `tbl_users` (`users_id`);

--
-- Constraints for table `tbl_project_cards`
--
ALTER TABLE `tbl_project_cards`
  ADD CONSTRAINT `tbl_project_cards_ibfk_1` FOREIGN KEY (`project_cards_modulesId`) REFERENCES `tbl_project_modules` (`project_modules_id`),
  ADD CONSTRAINT `tbl_project_cards_ibfk_2` FOREIGN KEY (`project_cards_cardId`) REFERENCES `tbl_front_cards` (`cards_id`);

--
-- Constraints for table `tbl_project_modules`
--
ALTER TABLE `tbl_project_modules`
  ADD CONSTRAINT `tbl_project_modules_ibfk_1` FOREIGN KEY (`project_modules_masterId`) REFERENCES `tbl_module_master` (`module_master_id`),
  ADD CONSTRAINT `tbl_project_modules_ibfk_2` FOREIGN KEY (`project_modules_projectId`) REFERENCES `tbl_project` (`project_id`);

--
-- Constraints for table `tbl_users`
--
ALTER TABLE `tbl_users`
  ADD CONSTRAINT `tbl_users_ibfk_1` FOREIGN KEY (`users_schoolId`) REFERENCES `tbl_school` (`school_id`),
  ADD CONSTRAINT `tbl_users_ibfk_2` FOREIGN KEY (`users_departmantId`) REFERENCES `tbl_department` (`department_id`),
  ADD CONSTRAINT `tbl_users_ibfk_3` FOREIGN KEY (`users_roleId`) REFERENCES `tbl_role` (`role_id`);
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
