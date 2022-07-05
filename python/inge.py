import random

modelo = [1, 1, 1, 1, 1, 1, 1, 1, 1, 1]  # Objetivo a alcanzar
largo = 10  # La longitud del material genetico de cada individuo
num = 10  # La cantidad de individuos que habra en la poblacion
pressure = 3  # Cuantos individuos se seleccionan para reproduccion.
mutation_chance = 0.2  # La probabilidad de que un individuo mute

print("\n\nModelo: %s\n" % (modelo))


def individual(min, max):
    """
        Crea un individual
    """
    return [random.randint(min, max) for i in range(largo)]


def crearPoblacion():
    """
        Crea una poblacion nueva de individuos
    """
    return [individual(1, 9) for i in range(num)]


def calcularFitness(individual):
    """
        Calcula el fitness de un individuo concreto.
    """
    fitness = 0

    for i in range(len(individual)):
        if individual[i] == modelo[i]:
            fitness += 1
    return fitness


def selection_and_reproduction(population):
    """
        Puntua todos los elementos de la poblacion (population) y guardandolos dentro de 'selected'.
        Despues mezcla el material genetico de los elegidos para c llenar la poblacion (guardando tambien una copia de los in modificar).
        Por ultimo muta a los individuos.
    """
    puntuados = [(calcularFitness(i), i) for i in population]
    puntuados = [i[1] for i in sorted(puntuados)]
    population = puntuados

    selected = puntuados[(len(puntuados)-pressure):]

    for i in range(len(population)-pressure):
        punto = random.randint(1, largo-1)
        padre = random.sample(selected, 2)

        population[i][:punto] = padre[0][:punto]
        population[i][punto:] = padre[1][punto:]

        return population


def mutation(population):
    """
        Se mutan los individuos al azar. Sin la mutacion de nuevos alcanzarse la solucion.
    """
    for i in range(len(population)-pressure):
        if random.random() <= mutation_chance:
            punto = random.randint(0, largo-1)
            nuevo_valor = random.randint(1, 9)

            while nuevo_valor == population[i][punto]:
                nuevo_valor = random.randint(1, 9)

            population[i][punto] = nuevo_valor
    return population


population = crearPoblacion()
print("Poblacion Inicial: \n%s" % (population))

for i in range(100):
    population = selection_and_reproduction(population)
    population = mutation(population)

print("\nPoblacion Final: \n%s" % (population))
print("\n\n")
