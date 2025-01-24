return {
  "mg979/vim-visual-multi",
  config = function()
    -- Bạn có thể thêm cấu hình cụ thể cho vim-visual-multi ở đây
    vim.g.VM_maps = {
      ["Find Under"] = "<C-d>", -- Tạo con trỏ mới cho từ hiện tại
      ["Find Subword Under"] = "<C-d>", -- Tạo con trỏ cho subword (ví dụ: biến trong mã)
    }
    -- Bạn có thể thêm các cài đặt khác nếu muốn.
  end,
}
