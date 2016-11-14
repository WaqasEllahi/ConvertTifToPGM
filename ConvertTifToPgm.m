% Convert tif to Pgm
scrImgPath = 'C:\Users\TNDUser\Desktop\analysis\fingerJet\FVC-DB\FVC_2004\DB4_A\';
dstImgPath = 'C:\Users\TNDUser\Desktop\analysis\fingerJet\FVC-DB\FVC_2004\DB4_A_PGM\';
inputType = '.tif';
outputType = '.pgm';

Files=dir(strcat(scrImgPath,'*',inputType));
for k=1:length(Files)
   FileNames = Files(k).name
   img  = imread(strcat(scrImgPath, FileNames));
   indx = find(FileNames=='.');
   imwrite(img,strcat(dstImgPath, FileNames(1,1:indx-1),outputType));
end