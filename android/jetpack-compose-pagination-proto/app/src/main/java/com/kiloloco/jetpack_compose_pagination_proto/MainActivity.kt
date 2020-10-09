package com.kiloloco.jetpack_compose_pagination_proto

import android.os.Bundle
import android.util.Log
import androidx.appcompat.app.AppCompatActivity
import androidx.compose.foundation.Text
import androidx.compose.foundation.layout.padding
import androidx.compose.foundation.lazy.LazyColumnForIndexed
import androidx.compose.material.*
import androidx.compose.runtime.Composable
import androidx.compose.runtime.getValue
import androidx.compose.runtime.livedata.*
import androidx.compose.runtime.onActive
import androidx.compose.ui.Modifier
import androidx.compose.ui.platform.setContent
import androidx.compose.ui.unit.dp
import androidx.lifecycle.LiveData
import androidx.lifecycle.MutableLiveData
import androidx.lifecycle.ViewModel
import androidx.lifecycle.ViewModelProvider
import com.kiloloco.jetpack_compose_pagination_proto.ui.JetpackcomposepaginationprotoTheme

class Animal(val id: Int, val emoji: String, val name: String)

class MainActivityViewModel : ViewModel() {
    val liveAnimals = MutableLiveData<List<Animal>>()

    private var currentIndex = 0

    fun getAnimals() {
        val animals = liveAnimals.value?.toMutableList() ?: mutableListOf()

        when (currentIndex) {
            0 -> animals.addAll(
                listOf(
                    Animal(1, "🐶", "Dog"),
                    Animal(2, "🐱", "Cat"),
                    Animal(3, "🐭", "Mouse"),
                    Animal(4, "🐹", "Hamster"),
                    Animal(5, "🐰", "Rabbit"),
                    Animal(6, "🦊", "Fox"),
                    Animal(7, "🐻", "Bear"),
                    Animal(8, "🐼", "Panda"),
                    Animal(9, "🐻‍❄️", "Polar Bear"),
                    Animal(10, "🐨", "Koala"),
                    Animal(11, "🐯", "Tiger"),
                    Animal(12, "🦁", "Lion"),
                    Animal(13, "🐮", "Cow"),
                    Animal(14, "🐷", "Pig"),
                    Animal(15, "🐸", "Frog")
                )
            )

            1 -> animals.addAll(
                listOf(
                    Animal(16, "🐵", "Monkey"),
                    Animal(17, "🐔", "Chicken"),
                    Animal(18, "🐧", "Penguin"),
                    Animal(19, "🐦", "Bird"),
                    Animal(20, "🐤", "Chick"),
                    Animal(21, "🦆", "Duck"),
                    Animal(22, "🦅", "Eagle"),
                    Animal(23, "🦉", "Owl"),
                    Animal(24, "🦇", "Bat"),
                    Animal(25, "🐺", "Wolf"),
                    Animal(26, "🐗", "Boar"),
                    Animal(27, "🐴", "Horse"),
                    Animal(28, "🦄", "Unicorn"),
                    Animal(29, "🐝", "Bee"),
                    Animal(30, "🐛", "Bug")
                )
            )
        }

        liveAnimals.value = animals
        currentIndex++
    }
}

class MainActivity : AppCompatActivity() {

    private lateinit var viewModel: MainActivityViewModel

    override fun onCreate(savedInstanceState: Bundle?) {
        super.onCreate(savedInstanceState)

        viewModel = ViewModelProvider(this).get(MainActivityViewModel::class.java)

        viewModel.getAnimals()

        setContent {
            JetpackcomposepaginationprotoTheme {

                Scaffold(
                    topBar = {
                        TopAppBar(title = { Text("Animals") })
                    }
                ) {
                    AnimalList(liveAnimals = viewModel.liveAnimals)
                }
            }
        }
    }

    @Composable
    fun AnimalList(liveAnimals: LiveData<out List<Animal>>) {
        val list by liveAnimals.observeAsState(initial = emptyList())

        LazyColumnForIndexed(items = list) { index, animal ->
            onActive(callback = {
                if (index == list.lastIndex) {
                    Log.i("kilo", "get more!!!!")
                    viewModel.getAnimals()
                }
            })

            ListItem(
                icon = { Text(animal.emoji) },
                text = { Text(animal.name) },
                modifier = Modifier.padding(vertical = 30.dp)
            )
        }
    }
}