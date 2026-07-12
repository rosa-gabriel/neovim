if false then
    return {
      'nvim-java/nvim-java',
      config = function()
        require('java').setup({
          jdk = {
            auto_install = false,
            version = '21',
          },
        })
      end,
    }
else
    return {}
end
