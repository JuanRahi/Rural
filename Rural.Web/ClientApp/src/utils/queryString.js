const BASE_URL = 'https://localhost:44386/';

export default function buildURL(path, params) {
    let url = new URL(BASE_URL + path);
    if (params) {
        Object.keys(params).forEach(key => {
            let value = params[key];
            if (Array.isArray(value)) {
                Object.values(value).forEach(i =>
                    url.searchParams.append(key, i)
                )
            } else {
                url.searchParams.append(key, value)
            }
        });
    }

    return url;
}