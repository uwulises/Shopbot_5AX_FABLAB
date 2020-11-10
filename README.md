# Shopbot_5AX_FABLAB

Repositorio destinado a documentar cambios que se hicieron a la Router CNC 5 ejes del FabLab Uchile.
#
LINKS <br/>
https://forums.autodesk.com/t5/hsm-post-processor-forum/shopbot-5-axis-post-issues-wrong-moves-on-a-b-axis/td-p/7962624 
<br/>
https://forums.autodesk.com/t5/hsm-post-processor-forum/how-to-set-up-a-4-5-axis-machine-configuration/td-p/6488176
<br/>
https://knowledge.autodesk.com/support/autodesk-hsm/troubleshooting/caas/sfdcarticles/sfdcarticles/How-to-enable-machine-rewinds-in-the-Haas-generic-post-processor-for-Fusion-360-HSM-CAM.html

# Changes
-My variables <br/>
-XYZAB zero; ZERO A

# From Fusion 360 post proccess
Edit range of movements, A/B; *function onOpen() <br/>
A:[-360,360]; B:[-120,120] degrees.

Update 10-11-2020 (not tested yet) <br/>
Change boolean var form false to true on performRewinds
// Start of onRewindMachine logic
/***** Be sure to add 'safeRetractDistance' to post properties. *****/ <br/>
var performRewinds = true; // enables the onRewindMachine logic
