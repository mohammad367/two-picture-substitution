im1=imread("4.jpg");
im2=imread("5.jpg");
size_p=size(im1)
step=10
step=size_p(1) / step
step=ceil(step)

for i =1:step
   j=0;
   while j+i< size_p(1)
       im1(i+j,:,:)=im2(i+j,:,:);
       j=j+step;
       
   end
   
    imshow(im1)
end


