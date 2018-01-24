
package ui.download;

import android.app.Activity;
import android.content.ContextWrapper;
import android.content.res.AssetManager;
import android.graphics.Color;
import android.util.AttributeSet;
import android.view.Gravity;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CompoundButton;
import android.widget.FrameLayout;
import android.widget.LinearLayout;

import com.facebook.react.bridge.ReactApplicationContext;
import com.facebook.react.bridge.ReactContext;
import com.facebook.react.bridge.ReactContextBaseJavaModule;
import com.facebook.react.bridge.ReactMethod;
import com.facebook.react.bridge.Callback;
import com.facebook.react.uimanager.ThemedReactContext;
import com.facebook.react.uimanager.UIManagerModule;
import com.facebook.react.uimanager.ViewGroupManager;

import com.facebook.react.uimanager.annotations.ReactProp;
import com.fenjuly.library.ArrowDownloadButton;

import java.util.Random;

public class RNDownloadButton extends ViewGroupManager<ViewGroup> {

    public static final String REACT_CLASS = "RNDownloadButton";

    @Override
    public String getName() {
        return REACT_CLASS;
    }

    @Override
    protected FrameLayout createViewInstance(final ThemedReactContext reactContext) {

        ArrowDownloadButton downloadButton = new ArrowDownloadButton(reactContext.getCurrentActivity());

        FrameLayout frameLayout = new FrameLayout(reactContext.getCurrentActivity());
        frameLayout.addView(downloadButton);

        return frameLayout;
    }


    @ReactProp(name = "lineWidth")
    public void setLineWidth(FrameLayout downloadButtonFrame, int lineWidth) {
    }

    @ReactProp(name = "backgroundColor")
    public void setBackgroundColor(FrameLayout downloadButtonFrame, String backgroundColor) {
        ArrowDownloadButton downloadButton = (ArrowDownloadButton) downloadButtonFrame.getChildAt(0);
        downloadButton.setBackgroundColor(Color.parseColor(backgroundColor));
    }

    @ReactProp(name = "tintColor")
    public void setTintColor(FrameLayout downloadButtonFrame, String tintColor) {
        ArrowDownloadButton downloadButton = (ArrowDownloadButton) downloadButtonFrame.getChildAt(0);
//        downloadButton.setBackgroundColor(Color.parseColor(tintColor));
    }

    @ReactProp(name = "tickColor")
    public void setTickColor(FrameLayout downloadButtonFrame, String tickColor) {
        ArrowDownloadButton downloadButton = (ArrowDownloadButton) downloadButtonFrame.getChildAt(0);
//        downloadButton.setDrawingCacheBackgroundColor(Color.parseColor(tickColor));
    }

    @ReactProp(name = "startAnimation")
    public void setStartAnimation(FrameLayout downloadButtonFrame, boolean start) {
        ArrowDownloadButton downloadButton = (ArrowDownloadButton) downloadButtonFrame.getChildAt(0);
        if (start) downloadButton.startAnimating();
    }


    @ReactProp(name = "progress")
    public void setProgress(FrameLayout downloadButtonFrame, int progress) {
        ArrowDownloadButton downloadButton = (ArrowDownloadButton) downloadButtonFrame.getChildAt(0);
        downloadButton.setProgress(progress);
    }


    @ReactProp(name = "reset")
    public void setReset(FrameLayout downloadButtonFrame, boolean reset) {
        ArrowDownloadButton downloadButton = (ArrowDownloadButton) downloadButtonFrame.getChildAt(0);
        if (reset) downloadButton.reset();
    }

}