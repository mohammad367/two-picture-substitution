im1=imread("4.jpg");
im2=imread("5.jpg");
size_p=size(im1);
size_p;
len=size_p(1);
wid=size_p(2);

for i =1:wid
   j=1;
   d=i-j+1;
   
   while j+d< i+2 & d>0 & j>0
       
       im1(j,d,:)=im2(j,d,:);
       d=d-1;
       j=j+1;
       
   end
   
   if mod(i,10) ==0 
       
    imshow(im1)
   end
   
end
imshow(im1)


for i =wid+2:len+1
   j=i-1;
   d=1;
   
   while j+d< i+2 & d<size_p(2) & j>0
       
       im1(j,d,:)=im2(j,d,:);
       d=d+1;
       j=j-1;
       
   end
   
   if mod(i,10) ==0
       
    imshow(im1)
   end
end
imshow(im1)
for i =len+1:len+wid
   j=len;
   d=i-j;
   
   while j+d< i+3 & d<size_p(2) & j>0 
       
       im1(j,d,:)=im2(j,d,:);
       d=d+1;
       j=j-1;
       
   end
  
   if mod(i,10) ==0
      
    imshow(im1)
   end
end
imshow(im1)
