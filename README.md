# Shopbot_5AX_FABLAB

Repositorio destinado a documentar cambios que se hicieron a la Router CNC 5 ejes del FabLab Uchile.
#
LINKS <br/>
https://forums.autodesk.com/t5/hsm-post-processor-forum/shopbot-5-axis-post-issues-wrong-moves-on-a-b-axis/td-p/7962624 
https://forums.autodesk.com/t5/hsm-post-processor-forum/how-to-set-up-a-4-5-axis-machine-configuration/td-p/6488176
#
#Archivos editados desde PATH/sbparts
#
My variables
# Rutina editada
XYZAB zero; ZERO A

#From Fusion 360 post proccess
Edit range of movements, A/B; *function onOpen()*
#
A:[-360,360]; B:[-120,120] degrees.
