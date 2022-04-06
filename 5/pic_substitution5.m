im1=imread("4.jpg");
im2=imread("5.jpg");
size_p=size(im1);

len=size_p(1);
wid=(size_p(2));
ratio=ceil(len/wid)
figure
imshow(im1)
for i =1:ceil(wid/2)+1
   im1(i:i*ratio,:,:)=im2(i:i*ratio,:,:);
   im1(len-i*ratio:len-i-1,:,:)=im2(len-i*ratio:len-i-1,:,:);
   im1(:,i,:)=im2(:,i,:);
   im1(:,wid-i,:)=im2(:,wid-i,:);
   
   if mod(i,2) ==0 
       pause(0.05)
    imshow(im1)
   
   end
   
end
imshow(im1)
