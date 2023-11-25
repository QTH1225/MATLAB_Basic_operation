%科赫曲线的绘制
function y=koch(ax,ay,bx,by,depth)
    if depth<1
        plot([ax,bx],[ay,by],'k');
        hold on
    else
        cx=ax+(bx-ax)/3;
        cy=ay+(by-ay)/3;
        dx=(ax+bx)/2+sqrt(3)*(ay-by)/6;
        dy=(ay+by)/2+sqrt(3)*(bx-ax)/6;
        ex=bx-(bx-ax)/3;
        ey=by-(by-ay)/3;
        koch(ax,ay,cx,cy,depth-1);
        koch(cx,cy,dx,dy,depth-1);
        koch(dx,dy,ex,ey,depth-1);
        koch(ex,ey,bx,by,depth-1);
    end







