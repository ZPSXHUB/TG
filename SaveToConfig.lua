function Savetxtconfig(log)
    if not log then
        log = 'Yummytool'
    end
    print('Bắt Đầu SaveConfig')
    local filename = game.Players.LocalPlayer.Name .. ".txt"
    if writefile then
        print('Kiểm Tra WriteFile')
        if isfile(filename) then
            if ValueFileReady == 1 then
                print('tạm Dừng Chuyển Đổi')
                return
            end
            ValueFileReady = 1
            print('File Đã Có Trong Workspace')
        else
            if ValueFileReady == 1 then
                print('tạm Dừng Chuyển Đổi')
                return
            end
            ValueFileReady = 1
            print('Chuẩn Bị Tạo File')
            writefile(filename, log)
            print('Tạo File Hoàn Thành')
        end
    end
end

