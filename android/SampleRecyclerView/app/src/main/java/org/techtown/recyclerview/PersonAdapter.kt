package org.techtown.recyclerview

import android.view.LayoutInflater
import android.view.View
import android.view.ViewGroup
import android.widget.TextView
import androidx.recyclerview.widget.RecyclerView

class PersonAdapter : RecyclerView.Adapter<PersonAdapter.ViewHolder>() {
    var items: ArrayList<Person> = arrayListOf()

    class ViewHolder(
        itemView: View
    ) : RecyclerView.ViewHolder(itemView) {
        val textView: TextView = itemView.findViewById(R.id.textView)
        val textView2: TextView = itemView.findViewById(R.id.textView2)

        fun setItem(item: Person) {
            textView.text = item.name
            textView2.text = item.mobile
        }
    }

    override fun onCreateViewHolder(parent: ViewGroup, viewType: Int): ViewHolder {
        val inflater = LayoutInflater.from(parent.context)
        val itemView = inflater.inflate(R.layout.person_item, parent, false)

        return ViewHolder(itemView)
    }

    override fun onBindViewHolder(holder: ViewHolder, position: Int) {
        holder.setItem(
            items[position]
        )
    }

    override fun getItemCount(): Int {
        return items.size
    }

    fun addItem(item: Person) {
        items.add(item)
    }

    fun setItem(position: Int, item: Person) {
        items[position] = item
    }
}