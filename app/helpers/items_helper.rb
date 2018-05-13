module ItemsHelper
    def domain_name(url)
        url.match(/[a-z0-9]+([\-\.]{1}[a-z0-9]+)*\.[a-z]{2,5}(:[0-9]{1,5})?/).to_s
    end
end
