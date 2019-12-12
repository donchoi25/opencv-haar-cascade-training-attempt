clear
echo "Running exe"
#creates sample positive images from one image by applying transformations
#./opencv_createsamples -img /home/don/Desktop/Statistics-Final-Project/20181127_001755.jpg_0000_1264_0500_0872_0816.png -bg bg.txt -num 1000 -vec test.vec -maxxangle 0.1 -maxyangle 0.1 -maxzangle 0.1 

#creates vec file out of every image in the cropped-pos folder
#find /home/don/Desktop/Statistics-Final-Project/cropped-pos -type f -exec ./opencv_createsamples -img '{}' -bg bg.txt -num 50 -vec '{}.vec' -maxxangle 0.1 -maxyangle 0.1 -maxzangle 0.1 \;

#trains cascade model using given parameters
#./opencv_traincascade -data /home/don/Desktop/Statistics-Final-Project/Cascade5 -vec complete_pos.vec -bg bg.txt -numStages 20 -numPos 2000 -numNeg 1500 -maxFalseAlarmRate 0.3 -acceptanceRatioBreakValue 0.0001

#circles cat based on training
#./catdetect --cascade="/home/don/Desktop/Statistics-Final-Project/Cascade5/cascade.xml" --nested-cascade="/home/don/Desktop/Statistics-Final-Project/Cascade2/cascade.xml" /home/don/Desktop/Statistics-Final-Project/20181127_001755.jpg

#find /home/don/Desktop/Statistics-Final-Project/Test_Samples -type f -exec ./catdetect --cascade="/home/don/Desktop/Statistics-Final-Project/Cascade5/cascade.xml" --nested-cascade="/home/don/Desktop/Statistics-Final-Project/Cascade2/cascade.xml" '{}' --save='{}circled.jpg' \;

#./opencv_createsamples -info /home/don/Desktop/Statistics-Final-Project/annotations.lst -img /home/don/Desktop/Statistics-Final-Project/positive-basis.jpg -bg bg.txt -num 2000 -maxxangle 0.1 -maxyangle 0.1 -maxzangle 0.1 -w 500 -h 500 -pngoutput

./opencv_visualisation --image=visual.png --model=/home/don/Desktop/Statistics-Final-Project/Cascade5/cascade.xml --data=/home/don/Desktop/Statistics-Final-Project/Result/
exit 0
