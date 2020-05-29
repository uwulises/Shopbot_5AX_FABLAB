+================================================
+                                                
+    Vectric machine output configuration file   
+                                                
+================================================
+                                                
+ History                                        
+                                                
+ Who    When       What                         
+ ======== ========== ===========================
+ ScottJ   11/11/2009 Written                      
+================================================

POST_NAME = "Shopbot Indexer X-parallel inch(*.sbp)"

FILE_EXTENSION = "sbp"

UNITS = "INCHES"

ROTARY_WRAP_Y = "yes"

+------------------------------------------------
+    Line terminating characters                 
+------------------------------------------------

LINE_ENDING = "[13][10]"

+------------------------------------------------
+    Block numbering                             
+------------------------------------------------

LINE_NUMBER_START     = 0
LINE_NUMBER_INCREMENT = 10
LINE_NUMBER_MAXIMUM = 999999

+================================================
+
+    default formating for variables
+
+================================================

VAR WRAP_DIAMETER = [WRAP_DIA|A||1.4]

+------------------------------------------------
+ Line numbering
+------------------------------------------------
VAR LINE_NUMBER = [N|A|N|1.0]

+------------------------------------------------
+ Spindle Speed
+------------------------------------------------
VAR SPINDLE_SPEED = [S|A||1.0]

+------------------------------------------------
+ Feed Rate
+------------------------------------------------

VAR CUT_RATE = [FC|C||1.2|0.0166]
VAR PLUNGE_RATE = [FP|C||1.2|0.0166]

+------------------------------------------------
+ Tool position in x,y and z
+------------------------------------------------

VAR X_POSITION = [X|A||1.6]
VAR Y_POSITION = [Y|A||1.6]
VAR Z_POSITION = [Z|A||1.6]

+------------------------------------------------
+ Home tool positions 
+------------------------------------------------
VAR X_HOME_POSITION = [XH|A||1.6]
VAR Y_HOME_POSITION = [YH|A||1.6]
VAR Z_HOME_POSITION = [ZH|A||1.6]

+================================================
+                                                
+    Block definitions for toolpath output       
+                                                
+================================================

+---------------------------------------------------
+  Commands output at the start of the file
+---------------------------------------------------

begin HEADER

"'----------------------------------------------------------------"
"'SHOPBOT ROUTER FILE IN INCHES"
"'GENERATED BY PARTWorks"
"'  UNITS = INCHES"
"IF %(25)=1 THEN GOTO UNIT_ERROR	'check to see software is set to standard"
"SA					'Set program to absolute coordinate mode"
"'Minimum extent in X = [XMIN] Minimum extent in Y = [YMIN] Minimum extent in Z = [ZMIN]"
"'Maximum extent in X = [XMAX] Maximum extent in Y = [YMAX] Maximum extent in Z = [ZMAX]"
"'Length of material in X = [XLENGTH]"
"'Length of material in Y = [YLENGTH]"
"'Depth of material in Z = [ZLENGTH]"
"'Home Position Information = [XY_ORIGIN], [Z_ORIGIN] "
"'Home X = [XH] Home Y = [YH] Home Z = [ZH]"
"'Rapid clearance gap or Safe Z = [SAFEZ]"
"'Diameter = [WRAP_DIA] Inches   "  
"'Wrap Y Values around X axis  "
"'Y Values are output as B     "
"SO,1,1					'Turn on router"
"PAUSE 2				'Give router time to reach cutting rpm"
"&Diameter=[WRAP_DIA]"
"&FeedRate=[FC]"
"&RotationalFeedRate=&Feedrate/(&Diameter*3.14159/360)"
"MS,[FC],[FP]"
"VS,,,,&RotationalFeedRate"
"JZ,[ZH]				'Jog Z axis to safe height"
"'----------------------------------------------------------------"


+---------------------------------------------------
+  Commands output for rapid moves 
+---------------------------------------------------

begin RAPID_MOVE

"J5,[X],,[Z],,[Y]"


+---------------------------------------------------
+  Commands output for the first feed rate move
+---------------------------------------------------

begin FIRST_FEED_MOVE

"M5,[X],,[Z],,[Y]"


+---------------------------------------------------
+  Commands output for feed rate moves
+---------------------------------------------------

begin FEED_MOVE

"M5,[X],,[Z],,[Y]"




+---------------------------------------------------
+  Commands output for a new segment - toolpath
+  with same toolnumber but maybe different feedrates
+---------------------------------------------------

begin NEW_SEGMENT

"&Diameter=[WRAP_DIA]"
"&FeedRate=[FC]"
"&RotationalFeedRate=&Feedrate/(&Diameter*3.14159/360)"
"MS,[FC],[FP]"
"VS,,,,&RotationalFeedRate"


+---------------------------------------------
+                 End of file
+---------------------------------------------
begin FOOTER

"'----------------------------------------------------------------"
"JZ,[ZH]					'Jog Z axis to safe height"
"SO,1,0					'Turn off router"
"END"
"'----------------------------------------------------------------"
"'"
"UNIT_ERROR:"
"C#,91					'Run file explaining unit error"
"END"

