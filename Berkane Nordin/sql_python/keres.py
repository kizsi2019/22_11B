import requests
resp = requests.get ("https://projekt.sulipy.hu/api/requests_library?tab=video")
print(resp.text)