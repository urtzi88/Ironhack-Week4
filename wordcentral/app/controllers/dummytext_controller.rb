class DummytextController < ApplicationController

  def new
    render 'new'
  end

  def create
    @number = params[:number_of_paragraphs]
    @obj = params[:obj]
    @dummy_words = []
    index = @number.to_i
    dummy_array = ["Lorem fistrum condemor hasta luego Lucas ese pedazo de. Tiene musho peligro la caidita a gramenawer tiene musho peligro quietooor papaar papaar ese pedazo de fistro por la gloria de mi madre. Está la cosa muy malar a wan no puedor benemeritaar pupita te voy a borrar el cerito no puedor. Por la gloria de mi madre se calle ustée qué dise usteer te va a hasé pupitaa ese que llega tiene musho peligro fistro ese pedazo de condemor papaar papaar se calle ustée. Diodeno llevame al sircoo fistro la caidita jarl condemor. Tiene musho peligro diodenoo mamaar jarl no te digo trigo por no llamarte Rodrigor llevame al sircoo al ataquerl no puedor ese hombree. Por la gloria de mi madre ese pedazo de ahorarr ahorarr apetecan diodeno fistro pecador fistro diodenoo qué dise usteer. Mamaar sexuarl caballo blanco caballo negroorl condemor no puedor te voy a borrar el cerito caballo blanco caballo negroorl no puedor al ataquerl. Benemeritaar diodeno a wan a gramenawer mamaar está la cosa muy malar a gramenawer va usté muy cargadoo tiene musho peligro quietooor.", "A wan diodeno torpedo qué dise usteer jarl qué dise usteer. Mamaar a peich a gramenawer diodeno. Jarl por la gloria de mi madre ese hombree te voy a borrar el cerito no puedor pecador sexuarl pecador hasta luego Lucas. Me cago en tus muelas te voy a borrar el cerito se calle ustée al ataquerl amatomaa está la cosa muy malar caballo blanco caballo negroorl no te digo trigo por no llamarte Rodrigor. Me cago en tus muelas llevame al sircoo no te digo trigo por no llamarte Rodrigor pupita. A peich te va a hasé pupitaa ese hombree papaar papaar papaar papaar.", "A gramenawer amatomaa sexuarl la caidita. Torpedo no puedor no te digo trigo por no llamarte Rodrigor tiene musho peligro. Hasta luego Lucas ese pedazo de apetecan condemor de la pradera no te digo trigo por no llamarte Rodrigor ahorarr a wan. Qué dise usteer tiene musho peligro ahorarr a wan se calle ustée se calle ustée. Hasta luego Lucas te va a hasé pupitaa te va a hasé pupitaa a gramenawer está la cosa muy malar fistro. Llevame al sircoo a wan condemor mamaar papaar papaar hasta luego Lucas ese pedazo de a wan. Benemeritaar tiene musho peligro amatomaa la caidita. Diodenoo caballo blanco caballo negroorl a peich está la cosa muy malar no puedor ahorarr ese hombree te voy a borrar el cerito. No puedor te voy a borrar el cerito me cago en tus muelas no puedor."]

    if @obj == "words"
      dummy_text = dummy_array[rand(dummy_array.length)]
      while index>0
        @dummy_words << dummy_text.split(' ')[rand(dummy_text.length)]
        index -= 1
      end
    elsif @obj == "paragraphs"
      while index>0
        @dummy_words << dummy_array[rand(dummy_array.length)]
        index -= 1
      end
    end

    render 'create'
  end

end
