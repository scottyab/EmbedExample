package com.scottyab.mylibrary

import android.content.Context
import android.util.AttributeSet
import com.github.chrisbanes.photoview.PhotoView
import com.scottyab.mylibrary.utils.ExampleDataObject

class MyLibraryPhotoView @JvmOverloads constructor(
    context: Context, attrs: AttributeSet? = null, defStyleAttr: Int = 0
) : PhotoView(context, attrs, defStyleAttr) {

    val example = ExampleDataObject(123L, "Test")

    override fun setLongClickable(longClickable: Boolean) {
        // this is just to given an example
    }
}
