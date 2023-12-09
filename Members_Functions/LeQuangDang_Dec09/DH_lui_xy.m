function a = DH_lui_xy(x, y, x_dh, h, Oh, app)
    % Oh = 2 là dạng O(h^2)
    % Oh = 1 là dạng O(h)
    % x_dh khong thuoc day x thi khong tinh duoc dao ham
    a='';
    if isempty(find(x==x_dh))
        uialert(app.UIFigure,"Không tính được đạo hàm", "Thông Báo", "Icon",'error');
        return
    end
    if Oh == 1
        if (find(x==x_dh) == 1)
            uialert(app.UIFigure,"Không tính được đạo hàm", "Thông Báo", "Icon",'error');
            return
        end
        i = find(x==x_dh);
        a = (y(i)-y(i-1))/h;
    else
        if (find(x==x_dh) < 3)
            a = 'Khong tinh duoc dao ham';
            return
        end
        i = find(x==x_dh);
        a = (3.*y(i) - 4.*y(i-1) + y(i-2))/(2*h); %O(h^2)
    end
end