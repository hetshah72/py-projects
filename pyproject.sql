-- phpMyAdmin SQL Dump
-- version 5.1.1
-- https://www.phpmyadmin.net/
--
-- Host: 127.0.0.1
-- Generation Time: Nov 09, 2021 at 09:09 AM
-- Server version: 10.4.21-MariaDB
-- PHP Version: 8.0.11

SET SQL_MODE = "NO_AUTO_VALUE_ON_ZERO";
START TRANSACTION;
SET time_zone = "+00:00";


/*!40101 SET @OLD_CHARACTER_SET_CLIENT=@@CHARACTER_SET_CLIENT */;
/*!40101 SET @OLD_CHARACTER_SET_RESULTS=@@CHARACTER_SET_RESULTS */;
/*!40101 SET @OLD_COLLATION_CONNECTION=@@COLLATION_CONNECTION */;
/*!40101 SET NAMES utf8mb4 */;

--
-- Database: `pyproject`
--

-- --------------------------------------------------------

--
-- Table structure for table `bookmark`
--

CREATE TABLE `bookmark` (
  `email` varchar(255) NOT NULL,
  `sr_no` int(255) NOT NULL,
  `project_id` int(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `bookmark`
--

INSERT INTO `bookmark` (`email`, `sr_no`, `project_id`) VALUES
('hetshah17003@gmail.com', 16, 1),
('hetshah17003@gmail.com', 17, 2),
('hetshah17003@gmail.com', 18, 1),
('ranapreksha8@gmail.com', 20, 2),
('ranapreksha8@gmail.com', 21, 1);

-- --------------------------------------------------------

--
-- Table structure for table `faqs`
--

CREATE TABLE `faqs` (
  `Q_id` int(2) NOT NULL,
  `Question` varchar(1000) NOT NULL,
  `Answer` varchar(1000) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `faqs`
--

INSERT INTO `faqs` (`Q_id`, `Question`, `Answer`) VALUES
(1, 'Is Python Good for Machine Learning?', 'Yes, Python is best for it.'),
(2, 'Define PIP?', 'PIP stands for Python Installer Package. As the name indicates, it is used for installing different python modules. It is a command-line tool providing a seamless interface for installing different python modules. It searches over the internet for the package and installs them into the working directory without the need for any interaction with the user. The syntax for this is:\r\n\r\npip install <package_name>\r\n'),
(3, 'What is NumPy?', 'NumPy is one of the most popular, easy-to-use, versatile, open-source, python-based, general-purpose package that is used for processing arrays. NumPy is short for NUMerical PYthon. This is very famous for its highly optimized tools that result in high performance and powerful N-Dimensional array processing feature that is designed explicitly to work on complex arrays. Due to its popularity and powerful performance and its flexibility to perform various operations like trigonometric operations, algebraic and statistical computations, it is most commonly used in performing scientific computations and various broadcasting functions.'),
(4, ' What is Flask?', 'Flask is a web microframework for Python with Jinja2 and Werkzeug as its dependencies.'),
(5, 'What is the lambda function?', 'An anonymous function is known as a lambda function. This function can have only one statement but can have any number of parameters.'),
(6, 'Difference between list and tuple?', 'Tuple is not mutable it can be hashed eg. key for dictionaries. On the other hand, lists are mutable.'),
(7, 'Which Python modules are mostly used?', 'os\r\nsys\r\nmath\r\nrandom\r\ndata time\r\nJSON'),
(8, 'What is pep 8?', 'Python Enhancement Proposal or pep 8 is a set of rules that specify how to format Python code for maximum readability.');

-- --------------------------------------------------------

--
-- Table structure for table `joinus`
--

CREATE TABLE `joinus` (
  `id` int(11) NOT NULL,
  `fname` varchar(255) NOT NULL,
  `lname` varchar(255) NOT NULL,
  `oname` varchar(255) NOT NULL,
  `email` varchar(255) NOT NULL,
  `pass` varchar(255) NOT NULL,
  `profession` varchar(255) NOT NULL,
  `intrest` varchar(255) NOT NULL,
  `token` varchar(255) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `joinus`
--

INSERT INTO `joinus` (`id`, `fname`, `lname`, `oname`, `email`, `pass`, `profession`, `intrest`, `token`) VALUES
(1, 'Prutha', 'Shah', 'charusat', 'prutha678@gmail.com', '$2y$10$Lrj.z5m/mgymnhWRHu3iwOx7mX9lJ.e3QPj1y.TYaD/hr0jvfWq9C', '1', '1', '16e699c1dbeaef5006804b97b4f9f6'),
(2, 'Kalpit', 'shah', 'charusat', 'pbshah678@gmail.com', '$2y$10$VeeTWNytg8bheU3pM3C5/ui62nLYKi8nOKNHqxqnMd1EqIreugvDS', '1', '1', '7ef4010c0f0204b25e22de159fac86'),
(3, 'Kalpit', 'Shah', 'Charusat', '20ce129@charusat.edu.in', '$2y$10$bANKSQsat/T7yRpdl9C2PuO6djNrEKXv1kZrCvUTACToEV/qfT0SS', '1', '1', 'aa0996dc60c66cbb9a441530ad4cd0'),
(34, 'nisarg', 'shah', 'charusa', '20ce132@charusat.edu.in', '$2y$10$lMePS9RnkCmF2gklTeu/XulmV0Vhfxfm1bI5fMAoP.bucNln62gIW', 'Developer', 'Machine Learning', '2dfad5b69d075f53efe52c4b80ed8e'),
(35, 'Prachi', 'Shah', 'CHARUSAT', 'prachivshah03@gmail.com', '$2y$10$mA7CZjgsj8BjRMr2r/zDJ.9wCU/4tWMFIHYTm8FB9qf2diuw23hKi', '', '', 'bba4fcb3ef558c596f5b38280a8f98');

-- --------------------------------------------------------

--
-- Table structure for table `projects`
--

CREATE TABLE `projects` (
  `Pyid` int(11) NOT NULL,
  `Title` varchar(200) NOT NULL,
  `Category` varchar(255) NOT NULL,
  `Hashtag1` varchar(200) NOT NULL,
  `Hashtag2` varchar(200) NOT NULL,
  `Hashtag3` varchar(200) NOT NULL,
  `Description` varchar(1000) NOT NULL,
  `Rating` float NOT NULL,
  `Bookmark` int(11) NOT NULL,
  `DownloadLink` varchar(200) NOT NULL,
  `VideoLink` varchar(200) NOT NULL,
  `IMAGE` varchar(200) NOT NULL
) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;

--
-- Dumping data for table `projects`
--

INSERT INTO `projects` (`Pyid`, `Title`, `Category`, `Hashtag1`, `Hashtag2`, `Hashtag3`, `Description`, `Rating`, `Bookmark`, `DownloadLink`, `VideoLink`, `IMAGE`) VALUES
(1, 'Music Player', 'Intermediate', 'Tkinter', 'GUI', 'Mutagen', 'We need an application that will allow us to play or listen to digital audio files.                                                                      \nMP3 player is the device to play MP3s and other digital audio files. The MP3 GUI program application attempts to emulate the physical MP3 Player.       \nThis program will allow you to play songs, music, and all MP3 files on your desktop or laptops.                                                                 \nThe main objective of this project is to allow users to play MP3 and digital audio files. To be engaging for users, the application has to have a simple but beautiful user interface.', 4.5, 1, 'https://github.com/srinidhi14vaddy/MP3-Player-using-Tkinter-and-Mutagen-in-Python', 'https://www.youtube.com/watch?v=2x-QRhlLtS0', './images/thumbnail.png'),
(2, 'Captcha Generator', 'Intermediate', 'Tkinter', 'Captcha ', 'Python', 'A simple image captcha genrator', 4.5, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Captcha_Genrator', 'https://www.youtube.com/watch?v=4mve3JZqULg', './images/thumbnail.png'),
(3, 'JPG to PNG Converter', 'Intermediate', 'Tkinter', 'Pillow', 'GUI', 'This project contains a simply python script to change file extension from .jpeg to .png\r\n\r\nRequirements:\r\nPillow module\r\n\r\n>>pip install pillow', 4, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Convert_JPEG_to_PNG', 'https://www.youtube.com/watch?v=5dcuHPbgFgA', './images/thumbnail.png'),
(4, 'Image to PDF Converter', 'Basic', 'OS', 'SYS', 'img2pdf', 'The Python script enables the user to convert Images into PDF files. However, you must note that the script can only work well for JPG file formats. You can use the converter for revamping JPG images into PDF format.\r\n\r\nRequirements\r\nimg2pdf module\r\n\r\nThe img2pdf is an external Python module which enables you to convert a JPG image into a PDF.\r\n\r\npip install img2pdf', 4.5, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Convert_a_image_to_pdf', 'https://www.youtube.com/watch?v=No5PbbZYRNA', './images/IMG2PDF.png'),
(5, 'StopWatch', 'Basic', 'Datetime', 'Tkinter', 'Simple', '', 4, 1, 'https://github.com/Python-World/python-mini-projects/blob/master/projects/Create_a_simple_stopwatch/README.md', 'https://www.youtube.com/watch?v=5W0V8tkrrwU', './images/thumbnail.png'),
(6, 'Digital Clock', 'Intermediate', 'Tkinter', 'Time', 'GUI', 'This script create a digital clock as per the system\'s current time.\n\nLibrary Used\ntkinter\ntime\n\nTo install required external modules\nRun pip install tkinter', 4.5, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Digital_clock', 'https://www.youtube.com/watch?v=AZs18CcDGJs', './images/thumbnail.png'),
(7, 'Image Scraping', 'Intermediate', 'Selenium', 'BeautifulSoup', 'Web scarpping', 'Dowmload Chrome Drive From Chrome.\r\nRun scrap-img.py file py scrap-img.py\r\nEnter Path : E:\\webscraping\\chromedriver_win32\\chromedriver.exe\r\nEnter URL : https://dribbble.com/', 4, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Download_images_from_website', 'https://www.youtube.com/watch?v=stIxEKR7o-c', ''),
(8, 'Video Player', 'Intermediate', 'OpenCV', 'Pathlib', 'Python', 'EasyVideoPlayer script is a video player based on the terminal. It can find the video in a pc, change its working directory and play the video file.\n\nPrerequisites\ncv2, os, pathlib and ffpyplayer.player libraries are needed to run this script, all of which can be installed using \"pip3 install \'library name\'\".', 4.5, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/EasyVideoPlayer', 'https://www.youtube.com/watch?v=UEXyVfs2WQg', ''),
(9, 'Language Translator', 'Basic', 'TerminalBased', 'GoogleTrans', 'Python', 'ransalte one language to another language\n\nRequirements\nyou need to install below library using pip\n$ pip install googletrans\nDescription\nThere are 16 languages you can translate into.\nHow to run the script\nExecute python3 python translator.py\nAfter then you have choices to select language by their code\nEnter Sentence and you will get translated language\nLanguage options and their code\nCode	Language\nbn	Bangla\nen	English\nko	Koren\nfr	French\nde	German\nhi	Hindi', 4, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Language_translator', 'https://www.youtube.com/watch?v=P1uHDPpe_04', ''),
(10, 'QR code Generator', 'Basic', 'qrcode', 'URl', 'Python', 'This script take a link of any URL and generate a QR code corresponding to it.\n\nLibrary Used\nqrcode\n\nTo install required external modules\nRun pip install qrcode', 4.5, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Qr_code_generator', 'https://www.youtube.com/watch?v=-GmJLI122ZM', ''),
(11, 'Color Detection', 'Advanced', 'Numpy', 'OpenCV', 'Python', '', 4, 1, 'https://github.com/ttusharsurve567/OpenCV-Mini-Projects/tree/main/Color%20Detection', 'https://www.youtube.com/watch?v=VU07jbfe9dU', ''),
(12, 'Speech to Text Converter', 'Advanced', 'speechrecognition', 'pyaudio', 'python', 'This Python script converts the Speech input into Text using NLP (Natural Langauge Processing).\nRequirements\nInstallation Required :\nPython Speech Recognition module:\npip install speechrecognition\nPyAudio:\nUse the following command for linux users\nsudo apt-get install python3-pyaudio\nWindows users can install pyaudio by executing the following command in a terminal\npip install pyaudio                               \nPython pyttsx3 module:\npip install pyttsx3', 4.5, 1, 'https://github.com/Python-World/python-mini-projects/tree/master/projects/Speech_to_text', 'https://www.youtube.com/watch?v=sHeJgKBaiAI', '');

--
-- Indexes for dumped tables
--

--
-- Indexes for table `bookmark`
--
ALTER TABLE `bookmark`
  ADD PRIMARY KEY (`sr_no`);

--
-- Indexes for table `faqs`
--
ALTER TABLE `faqs`
  ADD PRIMARY KEY (`Q_id`);

--
-- Indexes for table `joinus`
--
ALTER TABLE `joinus`
  ADD PRIMARY KEY (`id`);

--
-- Indexes for table `projects`
--
ALTER TABLE `projects`
  ADD PRIMARY KEY (`Pyid`);

--
-- AUTO_INCREMENT for dumped tables
--

--
-- AUTO_INCREMENT for table `bookmark`
--
ALTER TABLE `bookmark`
  MODIFY `sr_no` int(255) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=22;

--
-- AUTO_INCREMENT for table `joinus`
--
ALTER TABLE `joinus`
  MODIFY `id` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=36;

--
-- AUTO_INCREMENT for table `projects`
--
ALTER TABLE `projects`
  MODIFY `Pyid` int(11) NOT NULL AUTO_INCREMENT, AUTO_INCREMENT=13;
COMMIT;

/*!40101 SET CHARACTER_SET_CLIENT=@OLD_CHARACTER_SET_CLIENT */;
/*!40101 SET CHARACTER_SET_RESULTS=@OLD_CHARACTER_SET_RESULTS */;
/*!40101 SET COLLATION_CONNECTION=@OLD_COLLATION_CONNECTION */;
