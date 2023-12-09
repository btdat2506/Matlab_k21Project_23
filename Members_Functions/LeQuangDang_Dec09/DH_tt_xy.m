function a = DH_tt_xy(x, y, x_dh, h, Oh, app)
    % x, y ở dạng số
    % h bước nhảy
    % Oh loại sai số bắt cụt
    % Oh = 2 là dạng O(h^2)
    % Oh = 1 là dạng O(h)
    % x_dh khong thuoc day x thi khong tinh duoc dao ham
    i=1;
    a='';
    while (x(i)~=x_dh) %kiem tra x_dh thuoc mang x
        i=i+1;
        if (i>length(x))
            uialert(app.UIFigure,"Không tính được đạo hàm", "Thông Báo", "Icon",'error');
            return;
        end
    end
    if (((length(x)-i)<(Oh/2)) || (i < Oh))
        %kiem tra so luong phan tu 2 chieu
        uialert(app.UIFigure,"Không tính được đạo hàm", "Thông Báo", "Icon",'error');
        return;
    end
    a=((y(i+1))-y((i-1)))/(2*h);
end
        
    
    