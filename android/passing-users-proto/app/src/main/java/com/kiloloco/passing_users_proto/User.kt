package com.kiloloco.passing_users_proto

import java.io.Serializable

data class User(val id: Int, val name: String, val age: Int): Serializable {
    override fun toString(): String {
        return "$name is $age years old"
    }
}