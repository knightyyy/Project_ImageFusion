function result=analyze_entropy(im)
%%%%%%%% Seek the one-dimensional gray value, two-dimensional gray value and joint gray value of the image.
% Method 1
[M,N]=size(im);
temp=zeros(1,256);

%The gray value of the image is counted on [0 255]
for m=1:M;
    for  n=1:N;
        if im(m,n)==0;
            i=1;
        else
            i=im(m,n);
        end
        temp(i)=temp(i)+1;
    end
end
temp=temp./(M*N);

%Calculation by the definition of entropy
result=0;

for  i=1:length(temp)
    if temp(i)==0;
        result=result;
    else
        result=result-temp(i)*log2(temp(i));
    end
end

% Method 2
% %Entropy value entropy  
%
% [count,x]=imhist(im);
% total=sum(count);
% entropy=0;
% for i=1:256
%     p(i)=count(i)/total;
%     if p(i)~=0
%         logp(i)=log2(p(i));
%         entropele=-p(i)*logp(i);
%         entropy=entropy+entropele;
%     end
% end
