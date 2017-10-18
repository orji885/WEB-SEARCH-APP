

CREATE DATABASE searchengine;
USE searchengine;

CREATE TABLE IF NOT EXISTS `results` (

  `id` int(255) NOT NULL AUTO_INCREMENT,
  `title` varchar(255) NOT NULL,
  `text` varchar() NOT NULL,
  `images` varchar(50) NOT NULL,
  `link` varchar(225) NOT NULL,
  PRIMARY KEY (`id`)
) ENGINE=InnoDB DEFAULT CHARSET=latin1 AUTO_INCREMENT=1 ;




INSERT INTO `results` (`id`, `title`, `text`, `images`, `link`) VALUES ('1', 'Banner', 'a flag or standard used by a military commander.
A large piece of silk or cloth', '', ''), 
('2', 'S-box', 'a basic component of symmetric key algorithms', '', ''),
('3', 'Edikankong soup', '<p>Edikai Ikong is a scrumptious vegetable soup from Calabar, Southern Nigeria. It is made from an assorted selection of vegetables, palm oil and spices.</p><br> This dish is truly delicious and a nation's favourite. <br>Hope you have fun cooking and eating it.</p>
<ul>
<li>INGREDIENTS</li> <li>tuber Yam </li> 
 <li>400g Ugu/pumpkin leaves</li>  
 <li>200g Waterleaves or Gure in Yoruba </li> 
<li>1kg boiled assorted meat - 200g Periwinkle</li>  
<li>200g boiled Dried Stock Fish (pre-soaked)</li>  
<li> 4 pieces boiled Crabs and or Snails</li>  
 <li>100g Shrimps </li> 
 <li>50g Crayfish </li> 
 <li>300ml Palm oil </li> 
 <li>1 large Onion </li> 
 <li>1 large fresh tomato </li> 
 <li>2 or 3 pieces red chilli peppers</li>  <li>10g Locust beans </li> <li>Maggi and salt </li> </ul> 
', '<img src="images/EDIKANKONG_edited.jpg"  alt="" width="400px" height="200px">', '')
