import nltk

base = [('eu sou admirada por muitos','alegria'),
        ('me sinto completamente amado','alegria'),
        ('amar e maravilhoso','alegria'),
        ('estou me sentindo muito animado novamente','alegria'),
        ('eu estou muito bem hoje','alegria'),
        ('que belo dia para dirigir um carro novo','alegria'),
        ('o dia está muito bonito','alegria'),
        ('estou contente com o resultado do teste que fiz no dia de ontem','alegria'),
        ('o amor e lindo','alegria'),
        ('nossa amizade e amor vai durar para sempre', 'alegria'),
        ('estou amedrontado', 'medo'),
        ('ele esta me ameacando a dias', 'medo'),
        ('isso me deixa apavorada', 'medo'),
        ('este lugar e apavorante', 'medo'),
        ('se perdermos outro jogo seremos eliminados e isso me deixa com pavor', 'medo'),
        ('tome cuidado com o lobisomem', 'medo'),
        ('se eles descobrirem estamos encrencados', 'medo'),
        ('estou tremendo de medo', 'medo'),
        ('eu tenho muito medo dele', 'medo'),
        ('estou com medo do resultado dos meus testes', 'medo')]

# 1 Base de dados sem stop words
#print(base)
#print(base[1])

# 2 Stop words

stopwords = ['a', 'agora', 'algum', 'alguma', 'aquele', 'aqueles', 'de', 'deu', 'do', 'e', 'estou', 'esta', 'esta',
             'ir', 'meu', 'muito', 'mesmo', 'no', 'nossa', 'o', 'outro', 'para', 'que', 'sem', 'talvez', 'tem', 'tendo',
             'tenha', 'teve', 'tive', 'todo', 'um', 'uma', 'umas', 'uns', 'vou']

stopwordsnltk = nltk.corpus.stopwords.words('portuguese')
#print(stopwordsnltk)

def removestopwords(texto):
    frases = []
    for (palavras, emocao) in texto:
        semstop = [p for p in palavras.split() if p not in stopwords]
        frases.append((semstop, emocao))
    return frases

#print(removestopwords(base))

# 3 Stop words nltk

# 4 Stemming

def aplicastemmer(texto):
    stemmer = nltk.stem.RSLPStemmer()
    frasesstemming = []
    for (palavras, emocao) in texto:
        comstemming = [str(stemmer.stem(p)) for p in palavras.split() if p not in stopwordsnltk]
        frasesstemming.append((comstemming, emocao))
    return frasesstemming

frasescomstemming = aplicastemmer(base)
print(frasescomstemming)

# video

def buscapalavras(frases):
    todaspalavras = []
    for (palavras, emocao) in frases:
        todaspalavras.extend(palavras)
    return todaspalavras

palavras = buscapalavras(frasescomstemming)
#print(palavras)

# frequencia radical

def buscafrequencia(palavras):
    palavras = nltk.FreqDist(palavras)
    return palavras

frequencia = buscafrequencia(palavras)
#print(frequencia.most_common(50))

# com base na frequencia, extrair a lista final sem repeticao

def buscapalavrasunicas(frequencia):
    freq = frequencia.keys()
    return freq

palavrasunicas = buscapalavrasunicas(frequencia)
#print(palavrasunicas)

# extraindo as características de cada frase

def extratorpalavras(documento):
    doc = set(documento)
    caracteristicas = {}
    for palavra in palavrasunicas:
        caracteristicas['%s' % palavra] = (palavra in doc)
    return caracteristicas

caracteristicasfrase = extratorpalavras(['tim', 'gole', 'nov'])
#print(caracteristicasfrase)

basecompleta = nltk.classify.apply_features(extratorpalavras, frasescomstemming)
#print(basecompleta[0])

'''
classificador = nltk.NaiveBayesClassifier.train(basecompleta)

teste = 'genial'
teste_stemming = []
for (palavras) in teste.split():
    filtrado = [e for e in palavras.split()]
   # teste_stemming.append(str(stemmer.stem(filtrado[0])))
#print(teste_stemming)
print(classificador.classify(extrator_caracteristicas(teste_stemming)))
'''