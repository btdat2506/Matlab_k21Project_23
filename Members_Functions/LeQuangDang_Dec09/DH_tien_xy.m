function a = DH_tien_xy(x, y, x_dh, h, Oh, app)
    % x_dh khong thuoc day x thi khong tinh duoc dao ham
    i=1;
    a = '';
    while (x(i)~=x_dh)
        i=i+1;
        if (i>length(x))
            uialert(app.UIFigure,"Không tính được đạo hàm", "Thông Báo",'OK');
            return;
        end
    end
    if (length(x)-i)<2
        uialert(app.UIFigure,"Không tính được đạo hàm", "Thông Báo", 'OK');
        return
    end
    switch Oh
        case 1 %Oh
            a=((y(i+1))-y((i)))/(h);
        case 2 %Oh^2
            a= ((-y(i+2))+4*(y(i+1))-3*(y(i)))/(h*2);
    end
end
        
    
    