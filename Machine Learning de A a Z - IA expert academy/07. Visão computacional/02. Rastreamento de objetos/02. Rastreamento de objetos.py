import cv2

rastreador = cv2.TrackerCSRT_create()

video = cv2.VideoCapture('rua.mp4')  # Carregamento do video
ok, frame = video.read()  # Vai fazer a leitura do video / ok = se video foi carregador corretamente // frame = primeiro frame

bbox = cv2.selectROI(frame)  # Serve para selecionar o ROI(objeto que queremos seguir)

ok = rastreador.init(frame, bbox) # Temos que iniciar o rastreador


# Uma vez selecionado o rastreador, vamos continuar a leitura do video, mas com foco em encontra-lo
while True:
    ok, frame = video.read()  # Vamos carregar o frame
    if not ok:  # Caso termine de capturar o ultimo frame
        break
    ok, bbox = rastreador.update(frame)  # Precisamos atualizar o BBOX, que é a posicão que nosso ROI está
    
    # Vamos visualizar o objeto com base no novo bbox
    if ok:
        (x, y, w, h) = [int(v) for v in bbox]
        cv2.rectangle(frame, (x, y), (x+w, y+h), (0, 255, 0), 2, 1)
    else:
        cv2.putText(frame, 'falha no rastreamento', (100, 80),
                    cv2.FONT_HERSHEY_SIMPLEX, .75, (0, 0, 255), 2)

    # Mostrando a imagem calculada no código acima

    cv2.imshow('Rastreando', frame)
    if cv2.waitKey(1) & 0xFF == 27:  # Caso aperte ESC
        break
