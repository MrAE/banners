

URL="https://upload.wikimedia.org/wikipedia/commons/3/3d/Front_view_of_Statue_of_Liberty_with_pedestal_and_base_2024.jpg"
INPUT="Front_view_of_Statue_of_Liberty_with_pedestal_and_base_2024.jpg"

OUTPUT1="Statue_of_Liberty_LoG_0x2.png"
OUTPUT2="Statue_of_Liberty_DoG_3_1_5.png"

OUTPUT1b="Statue_of_Liberty_LoG_0x2_LIGHT.png"
OUTPUT2b="Statue_of_Liberty_DoG_3_1_5_LIGHT.png"

#wget ${URL} .

#magick ${INPUT} -bias 0% -morphology Convolve LoG:0x2 ${OUTPUT1}

magick ${INPUT} -bias 0% -morphology Convolve DoG:3.0,1.0,5.0 ${OUTPUT2}

#magick convert -negate ${OUTPUT1} ${OUTPUT1b}
magick convert -negate ${OUTPUT2} ${OUTPUT2b}
