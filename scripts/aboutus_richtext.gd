extends RichTextLabel



func _ready() -> void :
    if Global.CurrentLanguage == "en":
        self.text = "Gupik Studio\n\nWe are a small game team. We are 5 students from Izmir Buca Fatih Sultan Mehmet Anatolian High School. Our team is part of the GENÇTEK project (MEB - YEĞİTEK).\n\nWe love games. We love coding and pixel art. We work together to make fun and creative games. Thank you for playing our game!"




    elif Global.CurrentLanguage == "tr":
        self.text = "Gupik Studio\n\nBiz küçük bir oyun ekibiyiz. İzmir Buca Fatih Sultan Mehmet Anadolu Lisesi'nden 5 öğrenciyiz. Ekibimiz GENÇTEK projesinin (MEB - YEĞİTEK) bir parçasıdır.\n\nOyunları kodlamayı ve piksel artı seviyoruz. Eğlenceli ve yaratıcı oyunlar yapmak için birlikte çalışıyoruz. Oyunumuzu oynadığınız için teşekkür ederiz!"





    Global.CurrentLanguage_changed.connect( func():
        if Global.CurrentLanguage == "en":
            self.text = "Gupik Studio\n\nWe are a small game team. We are 5 students from Izmir Buca Fatih Sultan Mehmet Anatolian High School. Our team is part of the GENÇTEK project (MEB - YEĞİTEK).\n\nWe love games. We love coding and pixel art. We work together to make fun and creative games. Thank you for playing our game!"




        elif Global.CurrentLanguage == "tr":
            self.text = "Gupik Studio\n\nBiz küçük bir oyun ekibiyiz. İzmir Buca Fatih Sultan Mehmet Anadolu Lisesi'nden 5 öğrenciyiz. Ekibimiz GENÇTEK projesinin (MEB - YEĞİTEK) bir parçasıdır.\n\nOyunları kodlamayı ve piksel artı seviyoruz. Eğlenceli ve yaratıcı oyunlar yapmak için birlikte çalışıyoruz. Oyunumuzu oynadığınız için teşekkür ederiz!"




        )
