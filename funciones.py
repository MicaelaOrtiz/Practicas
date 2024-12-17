def leer_datos(nombre_archivo):
    ''' Devuelve una lista de diccionarios con la información del datos del archivo especificado '''
    import csv
    
    datos_dict = []
    try:
        # Abrimos el archivo
        # Una forma
        # with open(nombre_archivo, 'rt', encoding='utf8') as file:
        #     filas = csv.reader(file)
        f = open(nombre_archivo, 'rt', encoding='utf8')
        filas = csv.reader(f) # se cargan todas las filas en la variable filas
        cabecera = next(filas) # se lee la primera fila y queda posicionado en la segunda
        for fila in filas:
            # Crea un diccionario uniendo con la funcion "zip", la cabecera y los datos
            item =  dict(zip(cabecera,fila))
            datos_dict.append(item) # Agrega el item a la lista
        f.close() # Cierra el archivo
    except Exception as e:
        datos_dict.append(f'A sucedido un Error {e}')
    finally:
        return datos_dict