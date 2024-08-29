p=1;
q=2;
A=imread('test1.jpg');
A=rgb2gray(A);
[m,n]=size(A);
 moo=sum(sum(A));
 disp('sum.........................');
 disp(moo);
  m1o=0;
  mo1=0;
    for x=0:m-1
        for y=0:n-1
            m1o=m1o+(double(x)*double(A(x+1,y+1)));
            mo1=mo1+(double(y)*double(A(x+1,y+1)));
        end 
    end
    disp(m1o);
    disp(mo1);
  xx=(m1o)/(moo);
  yy=(mo1)/(moo);
  disp(xx);
  disp(yy);
    
  mu_oo=moo;
    
    mu_pq=0;
    for ii=0:m-1
        x=ii-xx;
        for jj=0:n-1
            y=jj-yy;
            mu_pq=double(mu_pq)+(double((x)^p))*double((y)^q)*double(A(ii+1,jj+1));
        end 
    end
    disp(mu_pq);
    gamma=double((0.5)*(p+q)+1);
    disp('gamma');
    disp(gamma);
    n_pq=(mu_pq)/double(((mu_oo)^(gamma)));
    disp(n_pq);